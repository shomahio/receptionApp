class RemovePrefectureIdFromInformations < ActiveRecord::Migration[6.0]
  def change
    remove_column :information, :prefecture_id, :integer
    remove_column :information, :open, :integer
    remove_column :information, :close, :integer
    remove_column :information, :opening_time, :datetime
    remove_column :information, :closing_time, :datetime
  end
end
