class AddDetailsToInformation < ActiveRecord::Migration[6.0]
  def change
    add_column :information, :place_id, :integer
  end
end
