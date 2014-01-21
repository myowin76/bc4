class Admin::AdminController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # before_filter :authenticate_user!
  layout "admin/admin"

  def dashboard
    # render "admin/dashboard"
    @assigned_reports = Admin::Report.order(:created_at).limit(5)    
  end


  def advanced_search
    
    # render "admin/advanced_search"
  end
  
  def store_location
    session[:return_to] = request.fullpath
  end

  #----------------------------------------------------------------------------
  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end

  
  protected


end
