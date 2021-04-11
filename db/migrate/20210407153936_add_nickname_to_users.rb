class AddNicknameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :postal_code, :string
    add_column :users, :prefecture_id, :integer
    add_column :users, :city, :string
    add_column :users, :address, :string
  end
end
