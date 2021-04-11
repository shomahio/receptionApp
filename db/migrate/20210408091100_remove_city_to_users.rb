class RemoveCityToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :city, :string
    remove_column :users, :address, :string
    remove_column :users, :prefecture_id, :integer
  end
end
