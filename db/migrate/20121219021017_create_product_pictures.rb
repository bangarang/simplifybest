class CreateProductPictures < ActiveRecord::Migration
  def change
    create_table :product_pictures do |t|
      t.string :name

      t.timestamps
    end
  end
end
