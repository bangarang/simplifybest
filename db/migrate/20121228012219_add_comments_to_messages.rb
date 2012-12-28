class AddCommentsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :comment, :text
  end
end
