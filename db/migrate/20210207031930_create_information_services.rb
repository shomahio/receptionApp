class CreateInformationServices < ActiveRecord::Migration[6.0]
  def change
    create_table :information_services do |t|
      t.references :information, foreign_key: true
      t.references :service, foreign_key: true
      t.timestamps
    end
  end
end
