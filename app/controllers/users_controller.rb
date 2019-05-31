class UsersController < ApplicationController
	
	def index

	end
	
	def new 
		@user = User.new
	end

	def show 
		@user = User.find_by(id: params[:id])
	end

	def create
		if user = User.create(user_params)
			session[:user_id] = user.id
			redirect_to user
		else
			redirect_to users_path
		end
	end

	def edit

	end

	def destroy

	end

	private 

		def user_params
			params.require(:user).permit(:name, :password, :tickets, :nausea, :happiness, :height, :admin)
		end
end
