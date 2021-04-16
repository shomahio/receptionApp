class Users::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(user_id: params[:id]).where("start_time > ?", Time.now - 1.days).order("start_time ASC")
  end

  def edit
    @reservation = Reservation.find(params[:id])
    @user = User.find(current_user.id)
    
  end

  def update
    @user = User.find(current_user.id)
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to root_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :number_of_people, :tel, :information_id, :start_time).merge(user_id: current_user.id)
  end
end
