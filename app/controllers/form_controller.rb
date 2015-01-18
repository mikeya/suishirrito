class FormController < ApplicationController
  def contact_message
    print params
    flash[:success] = "Thanks! I'll be in touch soon!"
    redirect_to '/jobs'
  end

  def job_application
    print params
    flash[:success] = "Thanks! I'll be in touch soon!"
    redirect_to '/jobs'
  end

  def catering_request
    print params
    flash[:success] = "Thanks! I'll be in touch soon!"
    redirect_to '/jobs'
  end
end
