class JobsController < ApplicationController

		before_action :logged_in_user, only: [:index, :new, :create, :edit, :update]

	def index
		@job = Job.all
	end

	def new
		@job = Job.new
		2.times { @job.locations.build}
	end

	def create
		@job = Job.new(job_params)
		if @job.save
			flash[:success] = "Job created."
			redirect_to :action => 'index'
		else
			render 'new'
		end
	end

	def edit 
		@job = Job.find(params[:id])
	end

	def update
		@job = Job.find(params[:id])
		if @job.update_attributes(job_params)
		redirect_to :action => 'index'
		else
			render 'edit'
		end
	end

	private

	def job_params
	params.require(:job).permit(:title, :jobDescription, :personalSpec, :selectDetails, :work_pattern_id, :contract_id, :salaryMin, :salaryMax, locations_attributes: [:id, :address])
	end

	def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
