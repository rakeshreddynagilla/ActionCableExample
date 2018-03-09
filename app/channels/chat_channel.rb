class ChatChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'chat'
  end

  def receive(data)
    ActionCable.server.broadcast('chat',data)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
