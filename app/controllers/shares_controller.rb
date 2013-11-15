class SharesController < ApplicationController

  def new
    @user = current_user
    @receiver = User.find_by(:id => params[:reciever_id])
    @share = Share.new
  end 

  def create
    share = Share.new
    share.user_id        = params[:share][:initiator]
    share.reciever_id    = params[:share][:reciever_id]
    share.cards_offered  = params[:share][:cards_offered]
    share.cards_returned = nil
    share.gift           = params[:share][:gift] 
    share.rejected       = false
    share.save
    redirect_to venues_path
  end

  def accept
  end

  private
  def share_params
    params.require(:share).permit(:reciever_id,:cards_offered,:gift,:initiator)
  end

end

