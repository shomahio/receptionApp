class RemoveFoodIdFromInformation < ActiveRecord::Migration[6.0]
  def change
    remove_column :information, :food_id, :integer
  end
end
