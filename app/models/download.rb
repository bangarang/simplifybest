class Download < ActiveRecord::Base
  attr_accessible :download, :product_id, :name
  belongs_to :product

  mount_uploader :download, DownloadUploader
end
