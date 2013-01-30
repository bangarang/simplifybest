class Quote < Message
  attr_accessible :comment
  validates_presence_of :comment
  def quote?
  	true
  end
end