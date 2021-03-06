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

def show_25_last_likes(conx_twit)
    #conx_twit.seach("#bonjour_monde").each {|tweet| puts}

    conx_twit.search("#bonjour_monde", result_type: "recent").take(25).each do |tweet|
        conx_twit.favorite(tweet.id) # mets en favori l'id du tweet qui contient hashtag bonjour_monde
    end

    # puts tweet.user.screen_name.to_s+' '+tweet.id.to_s
    #		client.follow(tweet.user.screen_name)
    #		client.favorite(tweet.id) 
end

# faire des like
client_tweet = login_twitter

show_25_last_likes(client_tweet)