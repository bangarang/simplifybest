class Stuffthungs < ActiveRecord::Migration
  def change
    remove_column :products, :pic_url
    add_column :product_pictures, :pic_url, :string
  end
end
