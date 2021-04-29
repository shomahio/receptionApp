class Informations::ReceiptsController < ApplicationController
  before_action :authenticate_store!
  before_action :set_reservation, only: [:create, :new]
  before_action :move_to_root_path, except: [:index]

  def index
    # index_move_to_root_path
    @receipts = Receipt.where(information_id: params[:reservation_id], consent: nil).order("created_at ASC")
    @receipts1 = Receipt.where(information_id: params[:reservation_id], consent: 1).order("created_at ASC")
    @information = Information.find_by(store_id: current_store.id)
  end

  def new
    @receipt = Receipt.new
  end

  def create
    @receipt = Receipt.new(receipt_params)
    if @receipt.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def receipt_params
    params.require(:receipt).permit(:name, :price, :proviso, :number, :reservation_id).merge(information_id: @reservation.information_id, user_id: @reservation.user_id)
  end

  def set_reservation
    @reservation = Reservation.find(params[:reservation_id])
  end

  def move_to_root_path
    redirect_to root_path if current_store.id != @reservation.information.store.id
  end

  # def index_move_to_root_path
  #   redirect_to root_path if current_store.information.id != params[:reservation_id]
  # end
  
end
