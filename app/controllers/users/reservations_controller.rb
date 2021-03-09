class Users::ReservationsController < ApplicationController
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

  private

  def reservation_params
    params.require(:reservation).permit(:name, :number_of_people, :information_id, :starting_time, :ending_time).merge(user_id: current_user.id)
  end
end
