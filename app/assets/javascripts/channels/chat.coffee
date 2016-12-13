App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # alert(data['message'])
    m_picture = (pic) ->
      '</p><img src="' + pic + '" class="avatar">'

    $('#messages').append('<div class="message"><p class="balloon"><span class="author">' + data['member_name'] + "</span>" + data['message'] + m_picture(data['member_picture']) + '</div>')
    $("#messages").animate({
      scrollTop: $('#messages .messages-wrapper').height()
    }, 400)

  speak: (message, member_id) ->
     @perform 'speak', message: {msg: message, member_id: member_id}


$('#chat_speaker_member_button').on 'click', (event) ->
  App.chat.speak($('#chat_speaker_member_txt').val(), $('#chat_speaker_member_id').val())
  event.preventDefault()
  $('#chat_speaker_member_txt').val(" ")
