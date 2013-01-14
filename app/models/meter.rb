class Meter < Message
	attr_accessible :sos, :meter

  	validates_presence_of :meter
  
	def meter?
  		true
	end
end