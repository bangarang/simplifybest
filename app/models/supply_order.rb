class SupplyOrder < Message
	attr_accessible :sos, :comment

	def meter?
  		false
  	end

  	def supply?
  		true
  	end

   	def service?
  		false
  	end
end