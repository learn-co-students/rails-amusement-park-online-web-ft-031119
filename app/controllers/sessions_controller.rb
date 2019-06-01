class SessionsController < ApplicationController
	# helper_method :current_user

	def new

	end

	def create

		user = User.find_by(name: params[:user][:name])

		redirect_to root_path unless user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to user_path(user)
		
	end

	def destroy
		# session.clear
	end

end