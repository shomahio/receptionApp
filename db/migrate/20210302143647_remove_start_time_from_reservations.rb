class RemoveStartTimeFromReservations < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :start_time, :date_time
    remove_column :reservations, :end_time, :date_time
  end
end
