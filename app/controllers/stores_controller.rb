class StoresController < ApplicationController
  def show
    @information = Information.find_by(store_id: current_store.id)
    @reservations = Reservation.where(information_id: @information.id, name: nil)
  end

  def edit
  end
end
