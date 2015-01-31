class FormMailer < ActionMailer::Base
  default from: "notifications@sushirrito.com"

  def contact_email(contact_message)
    @contact_message = contact_message
    mail(to:'eat@sushirrito.com', subject:'Sushirrito Contact Inquiry')
  end

  def catering_email(catering_request)
    @catering_request = catering_request
    mail(to: 'catering@sushirrito.com', subject:'Sushirrito Catering Submission')
  end

  def job_email(job_application)
    @job_application = job_application
    mail(to: 'hr@sushirrito.com', subject:'Sushirrito Job Application')
  end
end
