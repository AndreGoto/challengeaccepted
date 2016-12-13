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

    $('#messages').append(m_current_member + '<p class="balloon"><span class="author">' + data['member_name'] + "</span>" + data['message'] + '</p>' + m_picture(data['member_picture']) + '</div>')
    $("#messages").animate({
      scrollTop: $('#messages .messages-wrapper').height()
    }, 400)

  speak: (message, member_id) ->
     @perform 'speak', message: {msg: message, member_id: member_id}


$('#chat_speaker_member_button').on 'click', (event) ->
  App.chat.speak($('#chat_speaker_member_txt').val(), $('#chat_speaker_member_id').val())
  event.preventDefault()
  $('#chat_speaker_member_txt').val(" ")
