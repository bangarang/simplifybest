class Meter < Message
	attr_accessible :sos, :meter

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