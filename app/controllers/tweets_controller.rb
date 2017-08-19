class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user).order('created_at DESC')
    @tweet = Tweet.new
  end


  def create
    Tweet.create(tweet_params)
    redirect_to :root and return
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text ,:shop ,:shop_url,:img).merge(user_id: current_user.id)
  end

end
