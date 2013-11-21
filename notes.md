#Views 
  #login(devise)
    #twitter(ominauth) 
  #list-view
    #see venues(foursquare gem)
    #add venues
  #show-view
    #see venue name 
    #see venus details 
    #see rating
    #see comments
    #add review

#ASSOCIATIONS
#user
  has_many :reviews
  has_many :venues through :reviews 
  has_many :authentications

#review
  belongs_to :user
  belongs_to :venue 

#venue
  has_many :users through :reviews
  has_many :reviews
  belongs_to :created_by :user_id

#FEATURES TO ADD:
  HTML5 GeoLocation (or IP GeoCoding)
  Correlate Yelp, Foursquare, and NYC Open Data for a Definitive List
  GeoCoder location based queries in the data

#WISH LIST
  JQUERY Mobile Templating. 

#GEMS
  gem(ominauth)
  gem(quimby)
  gem(unicorn)
  gem(figaro)

#Rake Task
Call Foursqaure
Call Yelp
Call NYC Open Date
normalize
insert in venues table

#TODOS
  #Share model build out
  #Add Venue to your "wallet"
  #Accept shares/reject shares
  #not allow nil search 

user_venue join table

update would be modifying the accepted value

shares table = accpeted t.stamps

whenever you have a boolena consider making it a time.stamp

Get Images - https://api.foursquare.com/v2/venues/VENUE_ID/photos

Text message you when new venue added?






