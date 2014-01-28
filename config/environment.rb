# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Bc4::Application.initialize!

Date::DATE_FORMATS[:default] = "%d-%m-%Y"
Time::DATE_FORMATS[:default] = "%d-%m-%Y %H:%M"

ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :port => 587,
  :domain => 'gmail.com',
  :authentication => "plain",
  :user_name => 'myowin76@gmail.com',
  :password => 'aungmyay242'
}