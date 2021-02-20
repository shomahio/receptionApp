class RemoveAgeIdFromInformation < ActiveRecord::Migration[6.0]
  def change
    remove_column :information, :age_id, :integer
    remove_column :information, :space_id, :integer
    remove_column :information, :location_id, :integer
    remove_column :information, :service_id, :integer
    remove_column :information, :payment_id, :integer
    remove_column :information, :drink_id, :integer
    remove_column :information, :room_id, :integer
  end
end
