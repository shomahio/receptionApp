class AddOpenTimeToinformations < ActiveRecord::Migration[6.0]
  def change
    add_column :information, :open_time, :time
    add_column :information, :close_time, :time
  end
end
