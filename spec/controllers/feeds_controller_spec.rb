require 'rails_helper'

RSpec.describe FeedsController do
  describe "GET index" do
    it "checks for success status" do
      get :index
      expect(response).to be_successful
    end

    it "loads the feeds" do
      entry = Feed.create(name: "Test", url: "example.com", description: "test")

      get :index
      expect(assigns(:feeds)).to eq [entry]
    end
  end

  describe "GET main" do
    it "checks for success status" do
      get :main

      expect(response).to be_successful
    end

    it "gets entities" do
      feed = Feed.create(name: "Test", url: "example.com", description: "test")
      feed.feed_entries.create(title: "new corona v....", published: Time.now.utc, content: "test-content",
        url: "example.com", author: "author")

      get :main

      expect(response).to be_successful
      expect(assigns(:entries).length).to eq 1
    end
  end

  describe "GET new" do
    it "checks for success status" do
      get :new
      expect(response).to be_successful
    end
  end

  describe "POST create" do
    it "creates a new record" do
      params = { feed: { name: "Test", url: "example.com", description: "test" } }
      post :create, params: params

      expect(Feed.count).to eq 1
    end
  end

  describe "delete Destroy" do
    it "deletes an existing record" do
      entry = Feed.create(name: "Test", url: "example.com", description: "test")
      params = { id: entry.id }
      delete :destroy, params: params

      expect(Feed.count).to eq 0
    end
  end
end
