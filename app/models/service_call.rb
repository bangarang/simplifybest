class ServiceCall < Message
	attr_accessible :sos, :comment

  validates_presence_of :comment

 	def service?
		true
	end
end