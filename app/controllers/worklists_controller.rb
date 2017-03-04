class WorklistsController < ApplicationController

		include SessionsHelper
		before_action :logged_in_user

def index
	@job = Job.all
end

def allocations
	@allocate = Job.allocation
end

private

	def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

end
