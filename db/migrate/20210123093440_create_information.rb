class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string :store_name,         null: false
      t.string :postal_code,        null: false
      t.integer :prefecture_id,     null: false
      t.string :city,               null: false
      t.string :address,            null: false
      t.string :building
      t.string :tel,                null: false
      t.integer :area_id,           null: false
      t.integer :genre_id,          null: false
      t.integer :light_id,          null: false
      t.integer :volume_id,         null: false
      t.integer :age_id,            null: false
      t.integer :budget_id,         null: false
      t.integer :room_id,           null: false
      t.integer :space_id,          null: false
      t.integer :tobacco_id,        null: false
      t.integer :location_id,       null: false
      t.integer :service_id,        null: false
      t.integer :food_id,           null: false
      t.integer :drink_id,          null: false
      t.references :store,          foreign_key: true
      t.timestamps
    end
  end
end
