class Brand < ActiveRecord::Base
  attr_accessible :description, :name, :slug, :image, :remote_image_url

  mount_uploader :image, ImageUploader

  has_many :products

  def to_param
  	slug # or "#{id}-#{name}".parameterize
  end

  def generate_slug
  	self.slug ||= name.parameterize
  end
end
