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

    if params[:query]
      @search_results = foursquare.venues.search(:query => params[:query], :ll => "40.6700 , -73.9400")
      #raise @search_results.to_yaml
      @venue = Venue.new
    else
      flash[:notice] = "Try again"
    end
    render 'venues/new'
  end

  private
  def venue_params
    params.require(:venue).permit(:name , :user_id)
  end

end


  











