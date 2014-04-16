class AddPicUrlToProducts < ActiveRecord::Migration
  def change
    add_column :products, :pic_url, :string
  end
end
