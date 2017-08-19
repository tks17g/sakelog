class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user).order('created_at DESC').page(params[:page]).per(20)
    @tweet = Tweet.new
  end


  def create
    Tweet.create(tweet_params)
    redirect_to :root and return
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params) if tweet.user_id == current_user.id
    redirect_to :root and return
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
    redirect_to :root and return
  end


  private
  def tweet_params
    params.require(:tweet).permit(:text ,:shop ,:shop_url,:img).merge(user_id: current_user.id)
  end

end
