class PianoChannel < ApplicationCable::Channel
  def subscribed
    stream_from "piano_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def onPlay(data)
    @message = data
    # @users = self.count_unique_connections
    # ChatChannel.broadcast_to 'chat_channel', message: @message
    ActionCable.server.broadcast('piano_channel', message: @message)
  end
end
