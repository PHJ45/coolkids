class Share < ActiveRecord::Base

  belongs_to :user
  belongs_to :venue
  belongs_to :reciever, :class_name => "User", :foreign_key => "reciever_id"

  # def reciever
  #   User.find_by(:id => self.reciever_id)
  # end

  #share.reciever.name  
end