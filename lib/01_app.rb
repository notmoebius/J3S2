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
     #client.update('Mon premier tweet en Ruby !!!!')  #ne sert que pour tester la connexion first time ever
 end


# faire des like
