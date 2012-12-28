class Message < ActiveRecord::Base
  	attr_accessible :first, :last, :company, :address

  	validates_presence_of :first, :last, :company

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
