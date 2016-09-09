class JobsController < ApplicationController
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
end
