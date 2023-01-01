class AddPhoneToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone_num, :string
    add_index :users, :phone_num, unique: true
  end
end
