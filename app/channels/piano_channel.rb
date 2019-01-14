class PianoChannel < ApplicationCable::Channel
  def subscribed
    stream_from "piano_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def onPlay(data)
    @note = data
    # @users = self.count_unique_connections
    # ChatChannel.broadcast_to 'chat_channel', note: @note
    ActionCable.server.broadcast('piano_channel', note: @note)
  end
end
