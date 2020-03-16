require 'rails_helper'
HACKER_NEWS = {
  name: "HN",
  url: "https://news.ycombinator.com/",
  description: "ycombinator"
}
RSpec.describe Feed, type: :model do
  describe 'feed attributes' do
    let(:feed) { Feed.new }
    it "has a name" do
      feed.name = HACKER_NEWS[:name]
      expect(feed.name).to eq HACKER_NEWS[:name]
    end

    it "has an url" do
      feed.url = HACKER_NEWS[:url]
      expect(feed.url).to eq HACKER_NEWS[:url]
    end

    it "has a description" do
      feed.description = HACKER_NEWS[:description]
      expect(feed.description).to eq HACKER_NEWS[:description]
    end
  end
end