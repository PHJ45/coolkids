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
    #foursquare.find_by_id(para,s[:id])
    @venue = Venue.new(venue_params)
    @venue.creator_user_id = current_user.id
    @venue.save
    redirect_to venues_path
  end 

  def search_foursquare
    lat  = "40.6700" 
    lng = "-73.9400"
    client_secret   = ENV["FOURSQUARE_CONSUMER_SECRET"]
    client_id       = ENV["FOURSQUARE_CONSUMER_KEY"]
    foursquare      = Foursquare::Base.new( client_id , client_secret)

    if params[:query]
      @search_results = foursquare.venues.search(:query => params[:query], :ll => "#{lat} , #{lng}")
      
      @venue = Venue.new
    else
      flash[:notice] = "Try again"
    end
    render 'venues/new'
  end

  private
  def venue_params
    params.require(:venue).permit(:name,:user_id,:foursquare_id,:address,:city,:cross_street,:lat,:lng,:wifi)
  end

end


  











