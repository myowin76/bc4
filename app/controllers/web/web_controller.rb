class Web::WebController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # before_filter :authenticate_user!
  layout "web/web"


  
  protected


end
