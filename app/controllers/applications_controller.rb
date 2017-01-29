class ApplicationsController < ApplicationController
before_action :logged_in_user

  def index
  	@application = Application.all
  end

  def new
  end

  def create
  end

  def update
  end

  private

  	def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
