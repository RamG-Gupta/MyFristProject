class SessionsController < ApplicationController
	def new

  end
  
def create
	
	user = User.find_by(email: params[:email])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id
		redirect_to articles_url
	else
		flash.now.alert = "email or password is invalid"
		redirect_to 'new'
	end
end 
def destroy
	session[:user_id] = nil
	redirect_to users_url, notice: 'logged out'
 
end
end
