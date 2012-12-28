class ServiceCall < Message
	attr_accessible :sos, :comment

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