class FeaturedPicture < ActiveRecord::Base
  attr_accessible :description, :image, :name

  mount_uploader :image, FeaturedPictureUploader
end
