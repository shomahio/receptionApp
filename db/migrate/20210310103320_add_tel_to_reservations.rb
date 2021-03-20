class AddTelToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :tel, :string
  end
end
