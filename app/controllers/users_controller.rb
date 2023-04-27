class UsersController < ApplicationController

  before_action :set_user, only: %i[show edit update]

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "プロフィールを編集しました"
      redirect_to user_path
    else
      flash[:danger] = "プロフィールの編集に失敗しました"
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end