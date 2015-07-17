class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
  	redirect_to '/login' unless current_user
  end

  def check_auth
  	if session[:user_id] != @course.user_id
  		flash[:notice] = "Sorry, you can't access the page."
  		redirect_to '/'
  	end
  end	
end
