module Api
	class JobsController < ApplicationController

		def index
			jobs = Job.all
			if status_id = params[:status_id]
				jobs = jobs.where(status_id: status_id)
			end
			respond_to do |format|
				format.json {render json: jobs, status: 200}
				format.xml {render xml: jobs, status: 200}
			end
		end

		def show
			job = Job.find(params[:id])
			render json: job, status: 200
			
		end

		def create
			job = Job.new(job_params)
			if job.save
				respond_to do |format|
					format.json {render json: job, status: 201, location: job}
					format.xml {render xml: job, status: 201, location: job}
				end
			end
		end

		private
		
		def job_params
			params.require(:job).permit(:title, :grade_id, :grade_equivalent, :jobDescription, :personalSpec, :selectDetails, :work_pattern_id, :contract_id, :status_id, :salaryMin, :salaryMax)
		end
	end
end