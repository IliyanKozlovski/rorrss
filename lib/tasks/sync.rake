namespace :sync do
  task feeds: [:environment] do
    Feed.all.each do |feed|
      p "fetching #{feed.url}"
      xml = HTTParty.get(feed.url).body
      content = Feedjira::Feed.parse(xml)
      content.entries.each do |entry|
        local_entry = feed.feed_entries.where(title: entry.title).first_or_initialize
        local_entry.update_attributes(content: entry.content, author: entry.author, url: entry.url, published: entry.published)
        p "Synced Entry - #{entry.title}"
      end
      p "Synced Feed - #{feed.name}"
    end
  end
end