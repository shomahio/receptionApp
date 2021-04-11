class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end

  def create
    #binding.pry
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to controller: :informations, action: :index
    else 
      render :new
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to root_path
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.update(tweet_params)
      redirect_to controller: :informations, action: :index
    else 
      render :new
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :text, :image).merge(user_id: current_user.id)
  end
end
