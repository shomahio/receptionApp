class AddOpeningTimeToInformation < ActiveRecord::Migration[6.0]
  def change
    add_column :information, :opening_time, :time,  null:false
    add_column :information, :closing_time, :time,  null:false
  end
end
