class AddPhoneNumberToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :phone_number, :string
  end
end
