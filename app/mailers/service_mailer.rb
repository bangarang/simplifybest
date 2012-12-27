class ServiceMailer < ActionMailer::Base
  default :to => "alex@simplifybest.com"
  default :from => "kcorxela@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.service_mailer.meters.subject
  #
  def meters(email_params, sent_at = Time.now)
    @subject = email_params[:subject]
    @sender = email_params[:address]
    @sent_on = sent_at
    @body = email_params[:body]
    @name = email_params[:name]
    mail(:subject => email_params[:subject])
  end
end
