class SessionsController < ApplicationController
	layout "login"  
	def new

    @page_title = "Login"
    @page_lead = "Welcome to the Bowen Craggs Web Effectiveness Index database.<br />
          Subscribers to our Web Effectiveness Index database get exclusive access to scores and commentary for all the companies in the FT Index plus best practice from the top performers. 
          
          Pick up incisive granular advice on what to do and how to do it, reduce mistakes, cut development time - saving you effort and money."
    @page_body = "If you are not a subscriber find out more about this unique resource or contact us to discuss your needs. Your company need not feature in the Index for you to use the service; we will review your website and add it to the database when you subscribe."
		# @user = User.new	
	end

  def create

    user = User.find_by_username_or_email(params[:login_input])
    
    if user && user.authenticate(params[:password])
      
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end

      # add login details to login history table
      # if user is admin - redirect to admin panel
      # if user is company user - redirect to wed panel

      if (user.role.name == 'Administrator')
        redirect_to admin_dashboard_path, :notice => "Logged in!"
      else
        redirect_to wed_dashboard_path, :notice => "Logged in!"
      end
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end

  end

  def destroy
	  cookies.delete(:auth_token)
    redirect_to login_path, :notice => "Logged out!"
	end

end
