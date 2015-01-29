class FormMailer < ActionMailer::Base
  default from: "notifications@sushirrito.com"

  def contact_email(contact_message)
    @contact_message = contact_message
    mail(to: @contact_message.email, subject:'Sushirrito Contact Inquiry')
  end

  def catering_email(catering_request)
    @catering_request = catering_request
    mail(to: @catering_request.email, subject:'Sushirrito Catering Submission')
  end

  def job_email(job_application)
    @job_application = job_application
    mail(to: @job_application.email, subject:'Sushirrito Job Application')
  end
end
