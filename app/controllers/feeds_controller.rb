class FeedsController < ApplicationController
  def index
    @feeds = Feed.all
  end

  def new
    @feed = Feed.new
  end

  def create
    @feed = Feed.create(feed_params)
  end

  def feed_params
    params.require(:feed).permit(:name, :url, :descriotion)
  end
end
