class RemoveAreaIdFrominformation < ActiveRecord::Migration[6.0]
  def change
    def up
      remove_column :information, :area_id
    end
  
    def down
      add_column :information, :area_id, :integer
    end
  end
end
