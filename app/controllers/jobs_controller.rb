class JobsController < ApplicationController
		include SessionsHelper
		before_action :logged_in_user, only: [:index, :new, :create, :edit, :update]

	def index
		@job = current_user.jobs
	end

	def new
		@job = Job.new
	end

	def create	
		@job = Job.create(job_params)
		@user = current_user.access_jobs.create(job: @job)
		if @job.save
			redirect_to new_job_location_path(@job)
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
		redirect_to new_job_location_path(@job)
		else
			render 'edit'
		end
	end

	private

	def job_params
	params.require(:job).permit(:title, :grade_id, :grade_equivalent, :jobDescription, :personalSpec, :selectDetails, :work_pattern_id, :contract_id, :salaryMin, :salaryMax)
	end

	def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
