class CreateInformationLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :information_locations do |t|
      t.references :information, foreign_key: true
      t.references :location, foreign_key: true
      t.timestamps
    end
  end
end
