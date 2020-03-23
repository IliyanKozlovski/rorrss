class FeedsController < ApplicationController
  def index
    @feeds = Feed.all
  end

  def main
    @entries = FeedEntry.all
  end

  def new
    @feed = Feed.new
  end

  def create
    @feed = Feed.new(feed_params)

    if @feed.save

      redirect_to feeds_path, notice: "Feed #{@feed.name} saved!"
    else
      flash[:alert] = "feed cannot be saved"
      render :new
    end
  end

  def destroy
    @feed = Feed.find(params[:id])
    if (@feed and @feed.destroy)
      redirect_to feeds_path, notice: "Feed #{@feed.name} deleted!"
    else
      flash[:alert] = "feed cannot be deleted"
      render :index
    end
  end

  def feed_params
    params.require(:feed).permit(:name, :url, :description)
  end
end
