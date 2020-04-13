class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # is_impressionable
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
