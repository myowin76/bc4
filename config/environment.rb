# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Bc4::Application.initialize!

Date::DATE_FORMATS[:default] = "%d-%m-%Y"
Time::DATE_FORMATS[:default] = "%d-%m-%Y %H:%M"