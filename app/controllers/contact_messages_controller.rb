class ContactMessagesController < ApplicationController
  def create
    @contact_message = ContactMessage.new(params[:contact_message])
    if @contact_message.valid?
      FormMailer.contact_email(params).deliver
      flash[:contact_message] = "Thanks! We'll be in touch soon!"
      redirect_to 'pages/index'
    else
      render 'pages/index'
    end
  end
end