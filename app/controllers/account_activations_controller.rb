class AccountActivationsController < ApplicationController
def edit
	user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      flash[:success] = "Account activated, sign in to continue."
      redirect_to login_url
    else
      flash[:danger] = "Invalid activation link"
      redirect_to root_url
    end
end
end
