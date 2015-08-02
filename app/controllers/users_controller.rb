class UsersController < ApplicationController
  def show
    @user       = User.find(params[:id])
    @prototypes = @user.prototypes
                       .order(created_at: :DESC)
                       .page(params[:page]).per(4)
  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:user_name,
                                 :avatar,
                                 :email,
                                 :member_of,
                                 :profile,
                                 :works)
  end
end
