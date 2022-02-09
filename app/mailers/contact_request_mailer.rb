class ContactRequestMailer < ApplicationMailer
  def new_contact_request_email
    @contact_request = params[:contact_request]

    mail(to: GMAIL_EMAIL, subject: 'Un email de ton site fidendev 🎉 !!')
  end
end
