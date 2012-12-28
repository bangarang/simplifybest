class Message < ActiveRecord::Base
  attr_accessible :first, :last, :company, :address

  validates :first, :presence => true
end
