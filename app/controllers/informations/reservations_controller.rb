class Informations::ReservationsController < ApplicationController
  #def new
    #@reservation = Reservation.new
  #end

  #def create
    #binding.pry
    #@reservation = Reservation.new(reservation_params)
    #if @reservation.save
      #redirect_to information_path(params[:information_id])
    #else
      #render :new
    #end
  #end

  def edit
    @reservation = Reservation.find(params[:information_id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      redirect_to information_path(params[:information_id])
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    if @reservation.destroy
      redirect_to information_path(params[:information_id])
      else
      render :show
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_time, :end_time).merge(information_id: params[:information_id])
  end
end

