class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_points, dependent: :destroy
  has_many :point_histories, dependent: :destroy

  def amount
    user_points.sum(:amount)
  end

  def self.authenticate(username, password)
    
  def self.search(search)
    if search
      User.where(['username LIKE ?', "%#{search}%"])
    else
      User.all
    end
  end

  
  is_impressionable counter_cache: true
  

end
