class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def profile
  end

  def share
    @user = current_user
    render 'shares#new'
  end 

end
