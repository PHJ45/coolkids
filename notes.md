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

gem(ominauth)
gem(foursqaure)
devise

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

  created_by :user_id

  #authentication

#Search - new class FoursquareClient
  #in initialize you will draw on the env

#FEATURES TO ADD:
  Following
  Trade Gems
  Recomendation - cosine similarity 
  HTML5 GeoLocation
  
#Thoughts?
  Yelp API 
  Login with Instagram?

#Wish List
  Instagram Photos?

Done
 #devise
 #ominauth








