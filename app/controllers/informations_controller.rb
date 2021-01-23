class InformationsController < ApplicationController
  def index
  end


  private

  def message_params
    params.require(:information).permit(:image).merge(store_id: current_store.id)
  end

end
