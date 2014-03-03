class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :configure_permitted_parameters, if: :devise_controller?
  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end

  def current_page
    request.fullpath.split("/").last
  end

  private

  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end

  def authorize
	  redirect_to login_url, alert: "Not authorized" if current_user.nil?
	end

  def user_for_paper_trail
    current_user
    # logged_in? ? current_member.id : 'Public user'  # or whatever
  end
  helper_method :current_user, :current_page
end
