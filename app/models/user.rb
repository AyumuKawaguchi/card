class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable, :trackable,:recoverable, :rememberable, :validatable,
  :confirmable, :lockable, :timeoutable, :omniauthable, omniauth_providers: [:twitter]

  has_many :user_points, dependent: :destroy
  has_many :point_histories, dependent: :destroy


  def self.search(search)
    if search
      User.where(['username LIKE ?', "%#{search}%"])
    else
      User.all
    end
  end

  
  is_impressionable counter_cache: true
  

end
