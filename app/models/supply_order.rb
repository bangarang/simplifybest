class SupplyOrder < Message
	attr_accessible :sos, :comment

  	validates_presence_of :comment, :sos

	def supply?
		true
	end
end