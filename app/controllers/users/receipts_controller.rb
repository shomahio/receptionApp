class Users::ReceiptsController < ApplicationController
  def index
    @receipts = Receipt.where(user_id: params[:id], consent: nil)
    @receipts1 = Receipt.where(user_id: params[:id], consent: 1)
  end

  def edit
    @receipt = Receipt.find(params[:id])
  end

  def update
    #@user = User.find(current_user.id)
    @receipt = Receipt.find(params[:id])
    if @receipt.update(receipt_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @receipt = Receipt.find(params[:id])
  end

  private
  def receipt_params
    params.permit(:name, :price, :consent, :reservation_id, :information_id, :user_id)
  end
end
