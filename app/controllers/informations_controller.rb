class InformationsController < ApplicationController
  
  def index
    @information = Information.all
    @tweets = Tweet.all
    @q = Information.includes(:genre).ransack(params[:q])
    @place_parent_array = Place.place_parent_array_create
    @genre_parent_array = Genre.genre_parent_array_create
    #@informations = @q.result(distinct: true)
    
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


  def show
    @information = Information.find(params[:id])
    #レコードの自動作成
    ReservationCollection.new(@information,@records)
    @reservations = Reservation.where(information_id: @information.id, name: nil)
    #過去のレコードの自動削除
    @records = Reservation.where("start_time < ?", Time.now)
    @records.destroy_all
  end

  def destroy
    #binding.pry
    @information = Information.find_by(params[:id])
    if @information.destroy
      redirect_to action: :index
    else
      render :show
    end
  end


  def search
    keyword = params[:q][:store_name_or_genre_name]
    area_word = params[:q][:city_or_address_or_place_name]
  
    genre_parent = Genre.where(ancestry: nil).where("name LIKE (?)", "%#{keyword}%").ids
    genre_array = Genre.where(ancestry: genre_parent).ids
  
    place_parent = Place.where(ancestry: nil).where("name LIKE (?)", "%#{area_word}%").ids
    place_array = Place.where(ancestry: place_parent).ids
  
    @q = Information.ransack(search_params.merge(
        g: {
          '0' => { m: 'or', store_name_or_genre_name_cont: keyword, genre_id_in: genre_array },
          '1' => { m: 'or', city_or_address_or_place_name_cont: area_word, place_id_in: place_array }
        }
      )
    )
    @informations = @q.result
  end

  private
  def information_params
    params.require(:information).permit(:name, :email, :image, :store_name, :postal_code, :city, :address, :building, :tel, :building, :transportation, :holiday, :opening_time, :closing_time, :light_id, :volume_id, :budget_id, :tobacco_id, :booking_id, :parking_id, :open_time, :close_time, drink_ids: [], age_ids: [], location_ids: [], music_ids: [], payment_ids: [], room_ids: [], service_ids: [], space_ids: []).merge(store_id: current_store.id, place_id: params[:place_id],genre_id: params[:genre_id])
  end

  def search_params
    params.require(:q).permit!
  end

end

