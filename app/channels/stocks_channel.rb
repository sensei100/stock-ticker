class StocksChannel < ApplicationCable::Channel
  def subscribed
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def follow # Added data variable
    stream_from "stock_stream:#{data['stock']}" # Added specific stock stream
  end

  def unfollow_all
    stop_all_streams # Added call to 'stop_all_streams'
  end
end
