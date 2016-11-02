class LocationsController < ApplicationController

	def create
		@job = Job.find(params[:article_id])
    	@location = @job.locations.create(comment_params)
    	redirect_to job_path
	end

	def edit
		
	end

	def destroy
		
	end
end
