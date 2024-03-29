class User < ActiveRecord::Base
  
  has_many :reviews, :dependent => :destroy
  has_many :reviewed_venues, :class_name => "Venue", :foreign_key => "reviewer_user_id", through: :reviews
  has_many :shares
  has_many :venues, :through => :shares
  has_many :created_venues, :class_name => "Venue", :foreign_key => "creator_user_id"


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of   :name
  validates_uniqueness_of :name       

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.twitter_handle = auth.info.nickname
      user.img_url = auth.info.image
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], :without_protection => true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  def password_required?
    super && provider.blank?
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end
  
end




