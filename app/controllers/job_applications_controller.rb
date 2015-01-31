class JobApplicationsController < ApplicationController
  def create
    @job_application = JobApplication.new(params[:job_application])
    if @job_application.valid?
      FormMailer.job_email(params[:job_application]).deliver
      flash[:job_application] = "Thanks! We'll be in touch soon!"
      redirect_to '/jobs'
    else
      render'pages/jobs'
    end
  end
end