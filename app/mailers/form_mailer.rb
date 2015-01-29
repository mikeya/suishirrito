class FormMailer < ActionMailer::Base
  default from: "notifications@sushirrito.com"

  def contact_email(fields)
    @fields = fields
    mail(to: @fields['email'], subject:'Sushirrito Contact Inquiry')
  end

  def catering_email(fields)
    @fields = fields
    mail(to: @fields['email'], subject:'Sushirrito Catering Submission')
  end

  def job_email(fields)
    @fields = fields
    print @fields
    mail(to: @fields['email'], subject:'Sushirrito Job Application')
  end
end
