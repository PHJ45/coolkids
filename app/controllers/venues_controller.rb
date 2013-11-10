class VenuesController < ApplicationController

  def index #GET /venues
    @venues = Venue.all
  end

  def show
    @venue =Venue.find(params[:id])
  end 

  def new
    @venue = Venue.new
  
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.save
    redirect_to venues_path
  end 

  private
  def venue_params
    params.require(:venue).permit( :name , :user_id)
  end

end