class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable, :trackable,:recoverable, :rememberable, :validatable,
         :timeoutable, :omniauthable, omniauth_providers: [:twitter]

  has_many :user_points, dependent: :destroy
  has_many :point_histories, dependent: :destroy

  def self.from_omniauth(auth)
    find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["nickname"]
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"]) do |user|
        user.attributes = params
      end
    else
      super
    end
  end

  def self.search(search)
    if search
      User.where(['username LIKE ?', "%#{search}%"])
    else
      User.all
    end
  end

  
  is_impressionable counter_cache: true
  

end
