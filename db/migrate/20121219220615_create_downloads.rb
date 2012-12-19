class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :name
      t.integer :product_id
      t.string :download

      t.timestamps
    end
  end
end
