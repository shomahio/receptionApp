class RenameMailColumnToInformations < ActiveRecord::Migration[6.0]
  def change
    rename_column :information, :mail, :email
  end
end
