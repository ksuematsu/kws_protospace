class UsersController < ApplicationController
  def index
  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:user_name, :avatar, :email, :member_of, :profile, :works)
  end
end
