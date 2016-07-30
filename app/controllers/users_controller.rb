class UsersController < ApplicationController
  def current_user_home
  redirect_to current_user
end
  def index
    @users = User.all
  end




  def show

    @hard_skills = HardSkill.where(user_id: current_user.id )
    @soft_skills = SoftSkill.where(user_id: current_user.id )
  
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
