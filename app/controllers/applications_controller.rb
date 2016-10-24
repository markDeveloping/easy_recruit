class ApplicationsController < ApplicationController
  def index
  	@application = Application.all
  end

  def new
  end

  def create
  end

  def update
  end
end
