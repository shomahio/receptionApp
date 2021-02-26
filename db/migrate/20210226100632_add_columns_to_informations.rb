class AddColumnsToInformations < ActiveRecord::Migration[6.0]
  def change
    add_column :information, :transportation, :string
    add_column :information, :business_hours, :string
    add_column :information, :holiday, :string
    add_column :information, :booking_id, :integer
    add_column :information, :parking_id, :integer
  end
end