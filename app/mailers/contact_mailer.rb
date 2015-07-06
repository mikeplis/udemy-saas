class ContactMailer < ActionMailer::Base
  default to: 'michael.plis01+contact@gmail.com'

  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body

    mail(from: email, subject: 'Dev Match Contact Form Message')
  end
end