class CreateInformationAges < ActiveRecord::Migration[6.0]
  def change
    create_table :information_ages do |t|
      t.references :information, foreign_key: true
      t.references :age, foreign_key: true
      t.timestamps
    end
  end
end
