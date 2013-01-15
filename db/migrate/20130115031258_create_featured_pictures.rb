class CreateFeaturedPictures < ActiveRecord::Migration
  def change
    create_table :featured_pictures do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
