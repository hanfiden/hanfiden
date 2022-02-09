class ContactRequestMailer < ApplicationMailer
  def new_contact_email
    @contact_request = params[:contact_request]

    mail(to: ENV['GMAIL_EMAIL'], subject: @contact_request.subject)
  end
end
