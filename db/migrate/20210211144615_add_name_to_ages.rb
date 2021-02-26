class AddNameToAges < ActiveRecord::Migration[6.0]
  def change
    add_column :ages, :name, :string
  end
end
