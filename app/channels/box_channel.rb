class BoxChannel < ApplicationCable::Channel
  def subscribed

  # stream_from "box"  
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  