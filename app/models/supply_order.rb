class SupplyOrder < Message
	attr_accessible :sos, :comment

  validates_presence_of :comment

	def supply?
		true
	end
end