class RemoveEndingTimeFromReservations < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :ending_time, :datetime
    remove_column :reservations, :store_id, :references
  end
end
