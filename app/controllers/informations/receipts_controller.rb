class Informations::ReceiptsController < ApplicationController
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
    @reservation = Reservation.find(params[:reservation_id])
    params.permit(:name, :price, :proviso, :reservation_id).merge(information_id: @reservation.information_id, user_id: @reservation.user_id)
  end
end
