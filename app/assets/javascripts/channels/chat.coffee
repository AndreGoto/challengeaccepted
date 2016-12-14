App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    m_picture = (pic) ->
      if(pic != null)
        '<img src="' + pic + '" class="avatar">'
      else
        ' '

    chat_speaker_current_id = parseInt($("#chat_speaker_current_id").val())
    m_current_member =
      if(data['member_id'] == chat_speaker_current_id)
        '<div class="message">'
      else
        '<div class="message invert">'

    now = new Date(Date.now())
    formatted = now.getHours() + ":" + now.getMinutes()

    m_message_f = (m_message) ->
      yt_regexp = /^https:\/\/www\.youtube\.com\/watch\?v=([a-zA-Z0-9_-]*)/
      yt_valid_link =  m_message.replace(/\/watch\?v=/g, '/embed/')
      img_regexp = /\Ahttp.*(jpeg|jpg|gif|png)\Z/
      m_valid_message =
        if(m_message.match(yt_regexp) != null)
          '<iframe width="300" height="180" src="' + yt_valid_link + '" frameborder="0" allowfullscreen style="margin-top: 6px;"></iframe>'
        # elseif(m_message.match(img_regexp) != null)
        #   '<img src="' + data['message'] + '" alt="" width="300" >'
        else
          m_message
      return m_valid_message

    $('#messages').append(m_current_member + '<p class="balloon"><span class="author">' + data['member_name'] + '<span class="time"> ~ ' + now.toLocaleDateString() + ' at ' + formatted + ' ~ </span></span>' + m_message_f(data['message']) + '</p>' + m_picture(data['member_picture']) + '</div>')
    $("#messages").animate({
      scrollTop: $('#messages .messages-wrapper').height()
    }, 400)

  speak: (message, member_id) ->
     @perform 'speak', message: {msg: message, member_id: member_id}


$('#chat_speaker_member_button').on 'click', (event) ->
  event.preventDefault()
  App.chat.speak($('#chat_speaker_member_txt').val(), $('#chat_speaker_member_id').val())
  $('#chat_speaker_member_txt').val("")
