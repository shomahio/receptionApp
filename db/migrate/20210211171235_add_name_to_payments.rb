class AddNameToPayments < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :name, :string
  end
end
