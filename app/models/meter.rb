class Meter < Message
	attr_accessible :sos, :meter

  validates_presence_of :meter
  
	def meter?
  		true
  	end

  	def supply?
  		false
  	end

   	def service?
  		false
  	end
end