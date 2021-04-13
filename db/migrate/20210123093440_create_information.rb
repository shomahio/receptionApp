class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string :store_name,         null: false
      t.string :postal_code,        null: false
      t.string :city,               null: false
      t.string :address,            null: false
      t.string :building
      t.string :tel,                null: false
      t.string :email,              null: false
      t.integer :genre_id,          null: false
      t.integer :light_id,          null: false
      t.integer :volume_id,         null: false
      t.integer :budget_id,         null: false
      t.integer :tobacco_id,        null: false
      t.integer :place_id,          null: false
      t.integer :holiday_id,        null: false
      t.integer :booking_id,        null: false
      t.integer :parking_id,        null: false
      t.integer :reception_id,      null: false
      t.integer :seet,              null: false
      t.string :food
      t.text :explanation,          null: false
      t.string :transportation,     null: false
      t.time :opening_time,         null: false
      t.time :closing_time,         null: false
      t.references :store,          foreign_key: true
      t.timestamps
    end
  end
end
