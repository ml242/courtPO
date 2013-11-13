# Omniauth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

twitter_key = "ITA2Gdoe8JKt58SZ7jSjg"
twitter_secret = "lnncwe4Z9p2BhCkqgbSSf0F9qQRZmdLHqVjMnFhJ6Y"

# provide :developer unless Rails.env.production?
provider :twitter, twitter_key, twitter_secret

end