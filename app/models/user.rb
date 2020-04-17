class User < ApplicationRecord
  
  has_many :user_point, dependent: :destroy
  has_many :point_history, dependent: :destroy


  def self.search(search)
    if search
      User.where(['username LIKE ?', "%#{search}%"])
    else
      User.all
    end
  end

  
  is_impressionable counter_cache: true
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
