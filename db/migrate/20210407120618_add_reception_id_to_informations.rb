class AddReceptionIdToInformations < ActiveRecord::Migration[6.0]
  def change
    add_column :information, :reception_id, :integer
    add_column :information, :explanation, :text
  end
end
