class RemoveStoreIdToReservations < ActiveRecord::Migration[6.0]
  def change
    remove_reference :reservations, :store
  end
end
