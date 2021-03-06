class UsersController < ApplicationController
	skip_before_filter :verify_authenticity_token
	

	def index
	
	end
	
	def show
	
	end
	
	def create
		@user = User.new(user_params)
		if @user.save
			render json: @user, status: 200
		else
			render json: @user.errors, status: 422
		end
	end

	def update

	end
	
	def destroy

	end	

	private
		def user_params
			params.require(:user).permit(:username, :first_name, :last_name, :password, :email)
		end

end
