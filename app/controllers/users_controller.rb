class UsersController < ApplicationController
	
	def index

	end
	
	def new 
		@user = User.new
	end

	def show
		if session[:user_id].present?
			@user = User.find_by(id: params[:id])
		else
			redirect_to root_path
		end
	end

	def create
		if user = User.create(user_params)
			session[:user_id] = user.id
			redirect_to user_path(user)
		else
			render :new
		end
	end

	def edit

	end

	def destroy

	end

	def signin
	
	end

	private 

		def user_params
			params.require(:user).permit(:name, :password, :tickets, :nausea, :happiness, :height, :admin)
		end
end
