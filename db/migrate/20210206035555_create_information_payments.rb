class CreateInformationPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :information_payments do |t|
      t.references :information, foreign_key: true
      t.references :payment, foreign_key: true
      t.timestamps
    end
  end
end
