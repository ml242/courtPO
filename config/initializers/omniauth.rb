# Omniauth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

twitter_key = "JkZmW6luMB09yxTFHXwtA"
twitter_secret = "xwpvXirI2PpUWJJ6xnlgGA2w3162SjHfFKpIYKig"

# provide :developer unless Rails.env.production?
provider :twitter, twitter_key, twitter_secret



end