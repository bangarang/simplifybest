class AddMetersToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :sos, :string
    add_column :messages, :meter, :string
  end
end
