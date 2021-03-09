class AddOpeningTimeToInformations < ActiveRecord::Migration[6.0]
  def change
    add_column :information, :opening_time, :datetime
    add_column :information, :closing_time, :datetime
  end
end
