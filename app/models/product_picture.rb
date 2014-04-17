class ProductPicture < ActiveRecord::Base
  attr_accessible :name, :product_id, :picture, :pic_url
  belongs_to :product
  mount_uploader :picture, PictureUploader

  before_create :default_name

	def default_name
    self.name ||= File.basename(pic_url, '.*').titleize if pic_url
  end
end