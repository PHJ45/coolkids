class UsersController < ApplicationController

  def index
    @users = User.where.not(:id => current_user.id)
    render :index
  end

  def profile
    @shares = Share.all
  end

  def share
    @user = current_user
    render 'shares#new'
  end 

end
