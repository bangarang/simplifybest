class Category < ActiveRecord::Base
  attr_accessible :name, :slug
  has_many :products

  def to_param
  	slug # or "#{id}-#{name}".parameterize
  end

  def generate_slug
  	self.slug ||= name.parameterize
  end
end
