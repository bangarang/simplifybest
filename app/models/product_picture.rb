class ProductPicture < ActiveRecord::Base
  attr_accessible :name, :product_id, :picture
  belongs_to :product
  mount_uploader :picture, PictureUploader
end
