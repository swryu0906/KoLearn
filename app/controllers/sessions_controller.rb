class SessionsController < ApplicationController
	def new
	end

	def create
	  @user = User.find_by(email: params[:session][:email])
	  if @user && @user.authenticate(params[:session][:password])
	    session[:user_id] = @user.id
	    flash[:notice] = "You logged in successfully."
	    redirect_to '/'
	  else
	  	flash[:notice] = "You failed to log in. Please try again."
	    redirect_to '/login'
	  end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
end
