class ContactRequestsController < ApplicationController
  def index
    redirect_to new_contact_request_path
  end

  def new
    @contact_request = ContactRequest.new
  end

  def create
    @contact_request = ContactRequest.new(contact_request_params)
    if @contact_request.save
      ContactRequestMailer.with(contact_request: @contact_request).new_contact_email.deliver_now

      flash[:notice] = 'Message envoyé avec succès ! 🎉'
      redirect_to new_contact_request_path
    else
      # flash.now[:error] = 'Le message n'a pas été envoyé !'
      render :new
    end
  end

  private

  def contact_request_params
    params.require(:contact_request).permit(:first_name,
                                            :last_name,
                                            :email,
                                            :phone_number,
                                            :subject,
                                            :content)
  end
end
