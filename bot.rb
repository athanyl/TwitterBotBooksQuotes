require 'dotenv'
require 'twitter'

Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["CONSUMER_KEY"]
  config.consumer_secret     = ENV["CONSUMER_SECRET"]
  config.access_token        = ENV["ACCESS_TOKEN"]
  config.access_token_secret = ENV["ACCESS_SECRET"]
end

tab = []
File.open("myfinalfile.txt").each do |line| 
	tab << line
end

while true
	i = rand(0..(tab.length-1))
	if tab[i].length < 275
		client.update(tab[i])
	else
		client.update("#{tab[i].slice(0..270)}...")
	end
	id = []
	client.search("LE TITRE DE TON LIVRE", result_type: "recent").take(6).collect do |tweet| #N'oublie pas de modifier le titre de ton livre ici (en laissant les "").
		client.favorite(tweet.id)
		puts tweet.id
	end
	sleep(1800)
end