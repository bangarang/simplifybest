class Stuffthungs < ActiveRecord::Migration
  def change
    remove_column :products, :pic_url, :string
    add_column :product_pictures, :pic_url, :string
  end
end
