class AddNameToDrinks < ActiveRecord::Migration[6.0]
  def change
    add_column :drinks, :name, :string
  end
end
