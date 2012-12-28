class ServiceMailer < ActionMailer::Base
  default :to => "alex@simplifybest.com"
  default :from => "meter-reading@simplifybest.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.service_mailer.meters.subject
  #
  def meters(email_params, sent_at = Time.now)
    @sent_on = sent_at
    @name = email_params[:name]
    @company = email_params[:company]
    @sos = email_params[:sos]
    @meter = email_params[:meter]
    mail(:subject => "Meter Reading")
  end

  def hi(email_params, sent_at = Time.now)
    @sent_on = sent_at
    @first = email_params[:first]
    @last = email_params[:last]
    @company = email_params[:company]
    @address = email_params[:address]
    mail(:subject => "Messages Test")
  end
end