class AddOpenToInformations < ActiveRecord::Migration[6.0]
  def change
    add_column :information, :open, :integer
    add_column :information, :close, :integer
  end
end
