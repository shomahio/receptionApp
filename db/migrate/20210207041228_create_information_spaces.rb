class CreateInformationSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :information_spaces do |t|
      t.references :information, foreign_key: true
      t.references :space, foreign_key: true
      t.timestamps
    end
  end
end
