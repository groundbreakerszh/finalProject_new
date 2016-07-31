class SiteController < ApplicationController
  before_action :authenticate_user!

  def home
    if user_signed_in?
      # show all users expect the current one!
      @users = User.where.not(id: current_user.id)
    else
      # show all users!
      @users = User.all
    end
  end

  def profile
    if user_signed_in?
      # show current user
      @user = current_user
    else
      # user not logged in
      redirect_to :new_user_session_path
    end
  end

  def member
    # get id from url
    @id = params[:id]
    if !@id.nil?
      # find user per id
      @user = User.find(@id)
    end
  end
end
