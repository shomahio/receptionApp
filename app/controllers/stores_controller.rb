class StoresController < ApplicationController
  before_action :move_to_index, only: [:show]
  def show
    @information = Information.find_by(store_id: current_store.id)
    @reservations = Reservation.where(information_id: @information.id, name: nil)
  end

  private
  def move_to_index
    @information = Information.find_by(store_id: current_store.id) 
    if @information == nil
      redirect_to root_path
    end
  end
end
