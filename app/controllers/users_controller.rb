class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit

  end

  def update
    current_user.update(user_params)
    redirect_to settings_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end
end
