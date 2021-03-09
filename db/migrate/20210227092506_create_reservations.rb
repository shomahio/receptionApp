class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :information,   foreign_key:true 
      t.references :user,          foreign_key:true  
      t.datetime :start_time
      t.datetime :end_time
      t.string :name
      t.integer :number_of_people
      t.timestamps
    end
  end
end
