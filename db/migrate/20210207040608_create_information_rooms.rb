class CreateInformationRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :information_rooms do |t|
      t.references :information, foreign_key: true
      t.references :room, foreign_key: true
      t.timestamps
    end
  end
end
