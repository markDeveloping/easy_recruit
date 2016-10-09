class UsersController < ApplicationController
	
	before_action :logged_in_user, only: [:show]
	before_action :correct_user, only: [:show, :edit]

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		 @user = User.new(user_params)
		if @user.save
      		@user.send_activation_email
      		flash[:info] = "Please check your email to activate your account."
      		redirect_to root_url
    	else
      		render 'new'
    end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.save
			@user.update_attributes(user_params)
			redirect_to :action => 'show'
			flash[:success] = "Your account details have been updated."
		end
			render 'edit'
		else
	end

	private

	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :email_confirmation, :department_id, :password, :password_confirmation)
	end

	def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(dashboard_url) unless @user == current_user
      	unless @user == current_user
      	flash[:info] = "You don't have access to this user."
  		end
    end

end
