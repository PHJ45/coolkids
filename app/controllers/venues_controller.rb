class VenuesController < ApplicationController

  def index #GET /venues
    @venues = Venue.all
    @visible_venues = Venue.limit(current_user.created_venues.count).order('id desc')
  end

  def show
    @venue = Venue.find(params[:id])
  end 

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    #https://api.foursquare.com/v2/venues/VENUE_ID/photos
    @venue.creator_user_id = current_user.id
    @venue.save
    
    redirect_to venues_path
  end 

  def search_foursquare
    # ip = request.remote_ip
    # s = Geocoder.search(ip)
    # lat = s[0].latitude
    # lng = s[0].longitude
    
    lat  = params[:lat] #"40.6700" 
    lng =  params[:lng] #"-73.9400"
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
    params.require(:venue).permit(:name,:user_id,:foursquare_id,:address,:city,:cross_street,:lat,:lng,:wifi,:close_time,:zip,:phone,:url,:img)
  end

end


  











