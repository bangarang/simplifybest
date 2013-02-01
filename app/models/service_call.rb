class ServiceCall < Message
	attr_accessible :sos, :comment

  validates_presence_of :comment. :sos

 	def service?
		true
	end
end