# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.delivery_method = :smtp
config.action_mailer.smpt_settings = {
    :address => "email-smtp.us-east-1.amazonaws.com",
    :port => 587
    :user_name => ENV['AWS_ACCESS_KEY_ID'],
    :password => ENV['AWS_SECRET_ACCESS_KEY'],
    :authentication => :login,
    :enable_starttls_auto => true
}