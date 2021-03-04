class RemoveBusinessHoursFromInformations < ActiveRecord::Migration[6.0]
  def change
    remove_column :information, :business_hours, :string
    remove_column :information, :open_time, :time
    remove_column :information, :close_time, :time
  end
end
