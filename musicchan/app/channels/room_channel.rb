class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak
  end

  def onChat(data)
    @message = data
    # @users = self.count_unique_connections
    # ChatChannel.broadcast_to 'chat_channel', message: @message
    ActionCable.server.broadcast('chat_channel', message: @message)
  end
end
