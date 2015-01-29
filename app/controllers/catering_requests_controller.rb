class CateringRequestsController < ApplicationController
  def create
    @catering_request = CateringRequest.new(params[:catering_request])
    if @catering_request.valid?
      FormMailer.catering_email(@catering_request).deliver
      flash[:catering_request] = "Thanks! We'll be in touch soon!"
      redirect_to '/catering'
    else
      render 'pages/catering'
    end
  end
end