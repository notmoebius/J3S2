 # ligne très importante qui appelle la gem.
require 'dotenv'
require 'twitter'
require 'pry'

# n'oublie pas les lignes pour Dotenv ici…
Dotenv.load('../.env')

# quelques lignes qui appellent les clés d'API de ton fichier .env
def login_twitter
    # quelques lignes qui appellent les clés d'API de ton fichier .env
    client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
        config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
        config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
        config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end
    puts ENV["TWITTER_CONSUMER_KEY"]
    puts ENV["TWITTER_CONSUMER_SECRET"]
    puts ENV["TWITTER_ACCESS_TOKEN"]
    puts ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    client.update('Mon premier tweet en Ruby !!!!')
end

# ligne qui permet de tweeter sur ton compte
login_twitter
