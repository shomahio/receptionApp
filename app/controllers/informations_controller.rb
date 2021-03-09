class InformationsController < ApplicationController
  
  def index
    @information = Information.all
    @tweets = Tweet.all
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
    #binding.pry
    @place_parent_array = Place.place_parent_array_create
    @genre_parent_array = Genre.genre_parent_array_create
    @information = Information.new(information_params)
    if @information.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def show
    @information = Information.find(params[:id])
    ReservationCollection.new(@information,@records)
    @reservations = Reservation.where(information_id: @information.id, user_id: nil)
    #過去のレコードの自動削除
    @records = Reservation.where("start_time < ?", Time.now)
    @records.destroy_all
  end


  private
  def information_params
    params.require(:information).permit(:name, :email, :image, :store_name, :postal_code, :city, :address, :building, :tel, :building, :transportation, :holiday,:opening_time, :closing_time, :open, :close, :prefecture_id, :light_id, :volume_id, :budget_id, :tobacco_id, :booking_id, :parking_id, :open_time, :close_time, drink_ids: [], age_ids: [], location_ids: [], music_ids: [], payment_ids: [], room_ids: [], service_ids: [], space_ids: []).merge(store_id: current_store.id, place_id: params[:place_id],genre_id: params[:genre_id])
  end

end
