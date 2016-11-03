class LocationsController < ApplicationController

	def new
		@location = Location.new
	end

	def create
		@job = Job.find(params[:job_id])
		@location = @job.locations.create(location_params)
		if @location.save
		render 'new'
		end
	end

	def edit
		@location = Location.find(params[:id])
	end

	def destroy
		
	end

	private

	def location_params
	params.require(:location).permit(:job_id, :address)
	end
end
