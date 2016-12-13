# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ChallengeMessage.create! message: data["message"]["msg"], member_id: data["message"]["member_id"]
    @m = Member.find(data["message"]["member_id"])
    ActionCable.server.broadcast "chat_channel", message: data["message"]["msg"], member_name: @m.user.name, member_picture: @m.user.picture.url(:bright_face), member_id: @m.user.id
  end
end
