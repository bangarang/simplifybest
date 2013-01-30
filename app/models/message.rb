class Message < ActiveRecord::Base
	attr_accessible :first, :last, :company, :address, :phone_number

	validates_presence_of :first, :last, :address, :phone_number
  validates_format_of :address,:with => Devise.email_regexp
  validates_as_phone_number :phone_number, :message => 'Enter an Actual Phone Number Please :)' 
    
  def contact?
    false
  end
  
  def meter?
    false
  end

  def supply?
    false
  end

  def service?
    false
  end

  def quote?
    false
  end
end
