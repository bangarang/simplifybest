class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :slug
      t.text :description

      t.timestamps
    end
  end
end
