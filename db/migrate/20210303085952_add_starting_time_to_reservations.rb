class AddStartingTimeToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :starting_time, :datetime
    add_column :reservations, :ending_time, :datetime
  end
end
