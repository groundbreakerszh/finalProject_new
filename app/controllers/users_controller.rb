class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(
    :username, :email,
    :password, :password_confirmation
    )
  end
end
