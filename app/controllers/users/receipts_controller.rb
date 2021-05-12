class Users::ReceiptsController < ApplicationController
  before_action :set_receipt, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]
  # before_action :move_to_root_path, except: [:index]
  def index
    @receipts = Receipt.where(user_id: params[:id], consent: nil).order("created_at ASC")
    @receipts1 = Receipt.where(user_id: params[:id], consent: 1).order("created_at ASC")
  end

  def edit
    @information = Information.find_by(id: @receipt.information.id)
  end

  def update
    if @receipt.update(receipt_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @information = Information.find_by(id: @receipt.information.id)
  end

  private
  def receipt_params
    params.require(:receipt).permit(:name, :price, :consent, :reservation_id, :information_id, :user_id)
  end

  def set_receipt
    @receipt = Receipt.find(params[:id])
  end

  def move_to_root_path
    redirect_to root_path if current_user.id != @receipt.user.id
  end

end
