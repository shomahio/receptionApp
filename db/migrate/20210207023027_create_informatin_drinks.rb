class CreateInformatinDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :informatin_drinks do |t|
      t.references :information, foreign_key: true
      t.references :drink, foreign_key: true
      t.timestamps
    end
  end
end
