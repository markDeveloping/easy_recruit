class LocationsController < ApplicationController

	def new
		@job = Job.find(params[:job_id])
		@locations= @job.locations
	end

	def create
		@job = Job.find(params[:job_id])
		@location = @job.locations.create(location_params)
		if @location.save
		redirect_to new_job_location_path(@job)
		else
			redirect_to new_job_location_path(@job)
		end
	end

	def destroy
		
	end

	private

	def location_params
	params.require(:location).permit(:job_id, :address)
	end
end
