class RemoveAreaIdFromInformation < ActiveRecord::Migration[6.0]
  def change
    remove_column :information, :area_id, :integer
  end
end
