class RenamePaymentsIdColumnToInformationPayments < ActiveRecord::Migration[6.0]
  def change
    rename_column :information_payments, :payments_id, :payment_id
  end
end
