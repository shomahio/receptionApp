class RemovePhotoToInformations < ActiveRecord::Migration[6.0]
  def change
    remove_column :information, :photo, :string
  end
end
