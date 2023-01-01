class AddMannerToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :manner, :float, default: 36.5
  end
end
