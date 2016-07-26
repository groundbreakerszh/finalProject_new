class SiteController < ApplicationController

  def home
    render 'home'
  end

  def login
    render 'login'
  end

  def profile
    render 'profile'
  end

  def member
    render 'member'
  end
end
