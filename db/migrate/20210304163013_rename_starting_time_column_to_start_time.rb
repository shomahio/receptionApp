class RenameStartingTimeColumnToStartTime < ActiveRecord::Migration[6.0]
  def change
    rename_column :reservations, :starting_time, :start_time
  end
end
