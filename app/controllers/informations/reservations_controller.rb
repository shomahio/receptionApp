class Informations::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(information_id: params[:format]).where.not(name: nil)
  end


  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    #@information = Informations.find(current_user.id)
    @reservation = Reservation.find(params[:id])
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
end
