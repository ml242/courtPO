# Omniauth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

twitter_key = ENV['twitter_key']
twitter_secret = ENV['twitter_secret']

# provide :developer unless Rails.env.production?
provider :twitter, twitter_key, twitter_secret



end