class VenuesController < ApplicationController

  def index #GET /venues
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end 

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.save
    redirect_to venues_path
  end 

  def search_foursquare
    client_secret   = ENV["FOURSQUARE_CONSUMER_SECRET"]
    client_id       = ENV["FOURSQUARE_CONSUMER_KEY"]
    foursquare      = Foursquare::Base.new( client_id , client_secret)
    @search_results = foursquare.venues.search(:query => params[:q], :ll => "40.6700 , 73.9400")
    @venue = Venue.new
    render 'venues/new'
  end

  private
  def venue_params
    params.require(:venue).permit(:name , :user_id)
  end

end









