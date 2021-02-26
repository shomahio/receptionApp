class RemovePrefectureIdFromInformation < ActiveRecord::Migration[6.0]
  def change
    remove_column :information, :prefecture_id, :integer
  end
end
