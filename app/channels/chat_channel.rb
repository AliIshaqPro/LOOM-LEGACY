class ChatChannel < ApplicationCable::Channel
  def subscribed
    # Logic for when a user subscribes to the channel
  end

  def unsubscribed
    # Logic for when a user unsubscribes from the channel
  end

  # Other methods for broadcasting messages, etc.
end
