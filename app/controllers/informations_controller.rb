class InformationsController < ApplicationController
  before_action :set_information, only: [:show, :edit, :destroy, :update]
  def index
    @information = Information.all
    @tweets = Tweet.last(3)
    @q = Information.includes(:genre).ransack(params[:q])
    @place_parent_array = Place.place_parent_array_create
    @genre_parent_array = Genre.genre_parent_array_create
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
    if @information.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def edit
    @place_parent_array = Place.place_parent_array_create
    @genre_parent_array = Genre.genre_parent_array_create
  end

  def update
    @place_parent_array = Place.place_parent_array_create
    @genre_parent_array = Genre.genre_parent_array_create
    if @information.update(information_params)
      redirect_to root_path
    else 
      render :edit
    end
  end

  def show
    @store = @information.store
    @q = Information.includes(:genre).ransack(params[:q])
    @reservations = Reservation.where(information_id: @information.id, name: nil)
    #レコードの自動作成
    ReservationCollection.new(@information,@records)
    #過去のレコードの自動削除
    @records = Reservation.where("start_time < ?", Time.now - 1.days).where(user_id: nil)
    @records.destroy_all
  end

  def destroy
    if @information.destroy
      redirect_to action: :index
    else
      render :show
    end
  end


  def search
    @keyword = params[:q][:store_name_or_genre_name]
    @area_word = params[:q][:city_or_address_or_place_name]
  
    genre_parent = Genre.where(ancestry: nil).where("name LIKE (?)", "%#{@keyword}%").ids
    genre_array = Genre.where(ancestry: genre_parent).ids
  
    place_parent = Place.where(ancestry: nil).where("name LIKE (?)", "%#{@area_word}%").ids
    place_array = Place.where(ancestry: place_parent).ids
  
    @q = Information.ransack(search_params.merge(
        g: {
          '0' => { m: 'or', store_name_or_genre_name_cont: @keyword, genre_id_in: genre_array },
          '1' => { m: 'or', city_or_address_or_place_name_cont: @area_word, place_id_in: place_array }
        }
      )
    )
    @informations = @q.result
    @reservations = Reservation.where(information_id: @informations.ids, name: nil)
  end

  private

  def information_params
    params.require(:information).permit(:email, :image, :store_name, :food, :explanation, :seet, :reception_id, :postal_code, :city, :address, :building, :tel, :building, :transportation, :holiday_id, :opening_time, :closing_time, :light_id, :volume_id, :budget_id, :tobacco_id, :booking_id, :parking_id, :open_time, :close_time, drink_ids: [], age_ids: [], location_ids: [], music_ids: [], payment_ids: [], room_ids: [], service_ids: [], space_ids: [], image_foods: [], image_appearances: [], image_introspections: [], image_entrances: [], image_seats: [], image_views: [], image_toilets: []).merge(store_id: current_store.id, place_id: params[:place_id],genre_id: params[:genre_id])
  end

  def search_params
    params.require(:q).permit!
  end

  def set_information
    @information = Information.find(params[:id])
  end

end

