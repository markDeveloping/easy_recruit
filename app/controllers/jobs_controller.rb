class JobsController < ApplicationController

		before_action :logged_in_user, only: [:index, :new]

	def index
		@job = Job.all
	end

	def new
		@job = Job.new
	end

	def create
		@job = Job.new(job_params)
		if @jobs.save
			redirect_to :action => 'index'
		end
	end

	def edit 
		@job = Job.find(params[:id])
	end

	private

	def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
