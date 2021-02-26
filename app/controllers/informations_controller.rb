class InformationsController < ApplicationController
  
  def index
    @information = Information.all
    
  end

  def new
    @information = Information.new
    @place_parent_array = Place.place_parent_array_create
    @genre_parent_array = Genre.genre_parent_array_create
  end

  def get_place_children
    #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    @place_children = Place.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def get_genre_children
    #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    @genre_children = Genre.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def create
    
    @place_parent_array = Place.place_parent_array_create
    @genre_parent_array = Genre.genre_parent_array_create
    @information = Information.new(information_params)
    binding.pry
    if @information.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def show
    @information = Information.find(params[:id])
  end


  private
  def information_params
    params.require(:information).permit(:name, :email, :image, :store_name, :postal_code, :city, :address, :building, :tel, :light_id, :volume_id, :budget_id, :tobacco_id, drink_ids: [], age_ids: [], location_ids: [], music_ids: [], payment_ids: [], room_ids: [], service_ids: [], space_ids: []).merge(store_id: current_store.id, place_id: params[:place_id],genre_id: params[:genre_id])
  end

end
