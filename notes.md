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

  #venue List
    #upvoting
    # 

  HTML5 GeoLocation (or IP GeoCoding)
  Coffee Near Me
  
  Correlate Yelp, Foursquare, and NYC Open Data for a Definitive List

  GeoCoder location based queries in the data

  Following
  Authorizations
  Ability to trade "gems"
  Recomendation - cosine similarity 
  
#WISH LIST
  JQUERY Mobile Templating. 
  Yelp API - Better Data.
  Tweet when new venue added. 
  Login with Instagram.
  
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

add venue not in database







