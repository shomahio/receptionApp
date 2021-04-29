class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, except: [:show]
  before_action :move_to_root_path, only: [:edit, :update, :destroy]
  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to controller: :informations, action: :index
    else 
      render controller: :tweet, action: :new
    end
  end

  def destroy
    @tweet.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to controller: :informations, action: :index
    else 
      render :new
    end
  end

  def show
  end

  private
  def tweet_params
    params.require(:tweet).permit(:title, :text, :image).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def move_to_root_path
    redirect_to root_path if current_user.id != @tweet.user.id
  end

end
