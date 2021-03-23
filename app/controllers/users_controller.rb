class UsersController < ApplicationController
  def show
    @information = User.find(params[:id])
    @tweets = current_user.tweets
  end
end
