class AddGroupsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :smalloffice, :boolean
    add_column :products, :printer, :boolean
    add_column :products, :workgroup, :boolean
    add_column :products, :enterprise, :boolean
  end
end
