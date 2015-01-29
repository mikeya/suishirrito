class FormController < ApplicationController
  def contact_message
    FormMailer.contact_email(params).deliver
    flash[:success] = "Thanks! We'll be in touch soon!"
    redirect_to request.referer
  end

  def job_application
    FormMailer.job_email(params).deliver
    flash[:success] = "Thanks! I'll be in touch soon!"
    redirect_to '/jobs'
  end

  def catering_request
    FormMailer.catering_email(params).deliver
    flash[:success] = "Thanks! I'll be in touch soon!"
    redirect_to '/catering'
  end

  private
  def validate_params(params)

  end

end
