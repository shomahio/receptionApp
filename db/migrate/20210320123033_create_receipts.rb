class CreateReceipts < ActiveRecord::Migration[6.0]
  def change
    create_table :receipts do |t|
      t.integer :price,       null: false
      t.string :name,         null: false
      t.string :proviso,      null: false
      t.boolean :consent
      t.string :number
      t.references :reservation, foreign_key: true
      t.references :user, foreign_key: true
      t.references :information, foreign_key: true
      t.timestamps
    end
  end
end
