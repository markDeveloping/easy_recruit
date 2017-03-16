class ApplicationsController < ApplicationController
before_action :logged_in_user

  def index
  	@applications = Application.all
  end

  def new
    @application = Application.new
  end

  def create
    @application = Application.create(app_params)
    if @application.save
      redirect_to applications_path
      flash[:success] = "Your created an applicant."
    else
      render 'new'
    end
  end

  def update
  end

  private
    def app_params
      params.require(:application).permit(:first_name, :last_name, :email, :job_id, :app_status_id)
    end

  	def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
