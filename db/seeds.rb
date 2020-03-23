# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Feed.create(name: "xkcd.com", url: "https://xkcd.com/rss.xml", description: "The legendary comic about science, social commentary, and everything in between")
Feed.create(name: "BBC news", url: "http://feeds.bbci.co.uk/news/rss.xml", description: "BBC news")