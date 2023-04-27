class UsersController < ApplicationController

  def new
  end

  def show
  end

  def edit
    
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end