class AddPictureToProductPictures < ActiveRecord::Migration
  def change
    add_column :product_pictures, :picture, :string
  end
end
