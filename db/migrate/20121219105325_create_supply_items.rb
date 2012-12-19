class CreateSupplyItems < ActiveRecord::Migration
  def change
    create_table :supply_items do |t|
      t.string :name
      t.string :description
      t.integer :product_id

      t.timestamps
    end
  end
end
