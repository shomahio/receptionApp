class Users::ReservationsController < ApplicationController
  def edit
    params.require(:reservation).permit(:name, :number_of_people).merge(user_id: current_user.id)
  end
end
