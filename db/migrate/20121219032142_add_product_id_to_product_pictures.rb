class AddProductIdToProductPictures < ActiveRecord::Migration
  def change
    add_column :product_pictures, :product_id, :integer
  end
end
