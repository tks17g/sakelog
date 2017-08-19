class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  def destroy
  end

  private
  def update_params
      params.require(:user).permit(:nickname)
  end

end
