class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :name
      t.string :description
      t.integer :product_id

      t.timestamps
    end
  end
end
