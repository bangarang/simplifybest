class Meter < Message
	attr_accessible :sos, :meter

  	validates_presence_of :meter, :sos
  
	def meter?
  		true
	end
end