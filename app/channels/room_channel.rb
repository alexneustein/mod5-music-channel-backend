class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def onChat(data)
    @message = data
    # @users = self.count_unique_connections
    # ChatChannel.broadcast_to 'chat_channel', message: @message
    ActionCable.server.broadcast('room_channel', message: @message)
  end
end
