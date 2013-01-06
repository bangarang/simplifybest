class Message < ActiveRecord::Base
  	attr_accessible :first, :last, :company, :address, :phone_number

  	validates_presence_of :first, :last, :company, :address, :phone_number
    validates_format_of :address,:with => Devise.email_regexp
    validates_as_phone_number :phone_number, :message => 'Enter an Actual Phone Number Please :)'
    # Normalizes the attribute itself before validation 
    phony_normalize :phone_number, :default_country_code => 'US'
    
  	def meter?
  		false
  	end
  	def supply?
  		false
  	end

  	def service?
  		true
  	end
end
