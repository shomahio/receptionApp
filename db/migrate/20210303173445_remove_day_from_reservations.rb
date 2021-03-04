class RemoveDayFromReservations < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :day, :string
    remove_column :reservations, :start_time, :time
    remove_column :reservations, :end_time, :time
  end
end
