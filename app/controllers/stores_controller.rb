class StoresController < ApplicationController
  def show
    @information = Information.find_by(store_id: current_store.id)
  end

  def edit
  end
end
