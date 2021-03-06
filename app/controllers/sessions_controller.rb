class SessionsController < ApplicationController

	def new
	end

  def create
  	user = User.find_by_email(params[:email].downcase)
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_back_or root_url
  	else
      flash.now[:error] = 'Invalid email/password combination'
  		render 'new'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, notice: 'Logged out!'
  end
end
