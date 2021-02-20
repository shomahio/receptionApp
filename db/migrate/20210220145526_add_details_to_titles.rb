class AddDetailsToTitles < ActiveRecord::Migration[6.0]
  def change
    add_column :information, :payment_id, :integer
    add_column :information, :mail, :string
  end
end
