class SessionsController < ApplicationController
  def new
  end

  # Method that recognises set user when name and password are entered
  def create
  	user = User.find_by(email: params[:session][:email].downcase)

  	if user && user.authenticate(params[:session][:password])
  		log_in user
  		redirect_to public_landing_url
  	else
  		flash.now[:danger] = 'Invalid credentials.'
  		render 'new'
  	end
  end

  def destroy
  	log_out
  	redirect_to login_url
  end
end
