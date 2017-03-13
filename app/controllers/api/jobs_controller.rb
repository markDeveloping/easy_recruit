module Api
	class JobsController < ApplicationController

		def index
			jobs = Job.all
			if status_id = params[:status_id]
				jobs = jobs.where(status_id: status_id)
			end
			render json: jobs, status: 200
		end

		def show
			job = Job.find(params[:id])
			render json: job, status: 200
			
		end
	end
end