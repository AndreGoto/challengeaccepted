App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # alert(data['message'])
    $('#messages').append('<p class="message text-right">' + data['message'] + ' <strong style="color: green">' + data['member_name'] + '</strong></p>')

  speak: (message, member_id) ->
     @perform 'speak', message: {msg: message, member_id: member_id}


$(document).on 'keypress', (event) ->
  if event.keyCode is 13 # return = send
    App.chat.speak($('#chat_speaker_member_txt').val(), $('#chat_speaker_member_id').val())
    event.preventDefault()
    # alert($('#chat_speaker_member_id').val())
