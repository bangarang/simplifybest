class ServiceMailer < ActionMailer::Base
  default :to => "alex@simplifybest.com, matt@simplifybest.com, donna@simplifybest.com"


  def contact(contact, sent_at = Time.zone.now)
    @sent_on = sent_at.to_formatted_s(:long_ordinal)
    @first = contact.first
    @last = contact.last
    @address = contact.address
    @comment = contact.comment
    mail(:subject => "General Contact", :from => "general-contact@simplifybest.com")
  end

  def quote(quote, sent_at = Time.zone.now)
    @sent_on = sent_at.to_formatted_s(:long_ordinal)
    @first = quote.first
    @company = quote.company
    @last = quote.last
    @address = quote.address
    @phone = quote.phone_number
    @comment = quote.comment
    mail(:subject => "Sales Quote", :from => "sales-quote@simplifybest.com")
  end

  def meter(meter, sent_at = Time.zone.now)
    @sent_on = sent_at.to_formatted_s(:long_ordinal)
    @first = meter.first
    @last = meter.last
    @company = meter.company
    @address = meter.address
    @sos = meter.sos
    @meter = meter.meter
    mail(:subject => "Meter Reading", :from => "meter-reading@simplifybest.com")
  end
  
  def supply(supply_order, sent_at = Time.zone.now)
    @sent_on = sent_at.to_formatted_s(:long_ordinal)
    @first = supply_order.first
    @last = supply_order.last
    @company = supply_order.company
    @phone = supply_order.phone_number
    @address = supply_order.address
    @sos = supply_order.sos
    @comment = supply_order.comment
    mail(:subject => "Supply Order", :from => "supply-orders@simplifybest.com")
  end
  
  def service(service_call, sent_at = Time.zone.now)
    @sent_on = sent_at.to_formatted_s(:long_ordinal)
    @first = service_call.first
    @last = service_call.last
    @company = service_call.company
    @phone = service_call.phone_number
    @address = service_call.address
    @sos = service_call.sos
    @comment = service_call.comment
    mail(:subject => "Service Call", :from => "service-calls@simplifybest.com", :to => "alex@simplifybest.com, matt@simplifybest.com, donna@simplifybest.com, chad@simplifybest.com")
  end
end