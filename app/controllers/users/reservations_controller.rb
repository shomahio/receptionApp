class Users::ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reservation, only: [:edit, :destroy, :update]
  before_action :set_user, omly: [:edit, :update]
  # before_action :move_to_root_path, except: [:index]
  def index
    @reservations = Reservation.where(user_id: params[:id]).where("start_time > ?", Time.now - 1.days).order("start_time ASC")
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

  def destroy
    @reservation.destroy
    redirect_to root_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :number_of_people, :tel, :information_id, :start_time).merge(user_id: current_user.id)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_user
    @user = User.find(current_user.id)
  end

  def move_to_root_path
    redirect_to root_path if current_user.id != @reservation.user.id
  end
end
