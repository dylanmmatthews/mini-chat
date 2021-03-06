class SessionsController < ApplicationController
	def create
		user = User.from_omniauth(request.env['omniauth.auth'])
		session[:user_id] = user_id
		flash[:success] = "Hello, #{user.name}"
		redirect_to root_url
	end

	def destroy
		session.delete(:user_id)
		flash[:success] = "Thanks for coming!"
		redirect_to root_url
	end

	def auth_fail
		render text: "you've tried to authenticate via #{params[:strategy]}, but the following error occurred: #{params[:message]}", status: 500
	end
end
