class UsersController < ApplicationController
	
	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to easy recruit."
			redirect_to @user
		else
			flash[:danger] = ""
			render 'new'
		end
	end

	private

	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :email_confirmation, :password_digest, :password_digest_confirmation)
	end

end
