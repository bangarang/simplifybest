class Contact < Message
  attr_accessible :comment
  validates_presence_of :comment
  def contact?
  	true
  end
end