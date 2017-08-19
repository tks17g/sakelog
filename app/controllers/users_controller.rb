class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
    @tweet = @user.tweets.order("created_at DESC").page(params[:page]).per(20)
  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
      params.require(:user).permit(:nickname)
  end

end
