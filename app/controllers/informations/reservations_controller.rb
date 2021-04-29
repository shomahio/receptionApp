class Informations::ReservationsController < ApplicationController
  before_action :authenticate_store!
  before_action :set_reservation, only: [:edit, :update]
  before_action :move_to_root_path, except: [:index]
  def index
    @reservations = Reservation.where(information_id: params[:format]).where.not(name: nil).order("start_time ASC")
    @information = Information.find_by(store_id: current_store.id)
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :number_of_people, :tel, :information_id, :start_time)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def move_to_root_path
    redirect_to root_path if current_store.id != @reservation.information.store.id
  end
end
