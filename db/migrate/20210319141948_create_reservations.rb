class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.integer :number_of_people
      t.string :tel
      t.datetime :start_time,      null: false
      t.references :user, foreign_key: true
      t.references :information, foreign_key: true
      t.timestamps
    end
  end
end
