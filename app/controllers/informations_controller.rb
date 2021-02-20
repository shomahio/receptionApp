class InformationsController < ApplicationController
  def index
  end

  def new
    @information = Information.new
    @place_parent_array = ["---"]
    Place.where(ancestry: nil).each do |parent|
      @place_parent_array << parent.name
    end
    @genre_parent_array = ["---"]
    Genre.where(ancestry: nil).each do |parent|
      @genre_parent_array << parent.name
    end

    def get_place_children
      #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
      @place_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
    end
    def get_genre_children
      #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
      @genre_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
    end
  end

  def create
    @Information = Information.new(information_params)
    if @item.save
      redirect_to root_path
    else 
      render :new
    end
  end


  private
  def information_params
    params.require(:information).permit(:image).merge(store_id: current_store.id)
  end

end
