class AddStartTimeToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :start_time, :time
    add_column :reservations, :end_time, :time
    add_column :reservations, :day, :date
  end
end
