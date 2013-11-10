class Venue < ActiveRecord::Base

  belongs_to :creator_id, :class_name => "User", :foreign_key => "user_id"
  has_many :reviews
  has_many :users, through: :reviews

end

# venue.users [reviewd]
# venue.creator

#Venue.where(:creator_id => self.id)

