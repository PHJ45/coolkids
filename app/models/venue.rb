class Venue < ActiveRecord::Base

  belongs_to :creator, :class_name => "User", :foreign_key => "creator_user_id"
  has_many   :reviews
  has_many   :reviewers, :class_name => "User", :foreign_key => "reviewer_user_id", :through => :reviews
  has_many   :shares
  has_many   :users, :through => :shares 

end

# venue.users [reviewd]
# venue.creator

#Venue.where(:creator_id => self.id)

