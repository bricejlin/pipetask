module SessionsHelper
	def signed_in?
		!current_user.nil?
	end

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def signed_in_user
		unless signed_in?
			store_location
    	redirect_to signin_url, notice: "Please sign in first."
    end
  end

  def admin_user
    unless signed_in? && current_user.admin == true
      store_location
      redirect_to signin_url, notice: "Please sign in first."
    end
  end

  def store_location
  	session[:return_to] = request.url if request.get?
  end

  def redirect_back_or(default)
  	redirect_to(session[:return_to] || default)
  	session.delete(:return_to)
  end
end
