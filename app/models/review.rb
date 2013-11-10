class Review < ActiveRecord::Base

  belongs_to :venue
  belongs_to :user

  validates_length_of :description, :maximum => 140, :message => "140 max"

end