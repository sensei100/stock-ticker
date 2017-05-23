class StocksChannel < ApplicationCable::Channel
  def subscribed
    stream_from "stock_stream:all_stocks"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def follow
  end

  def unfollow_all
  end
end
