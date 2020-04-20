class UserPoint < ApplicationRecord
  has_many :point_breakdowns, dependent: :destroy
  has_many :point_histories, through: :point_breakdowns
  
  belongs_to :user

end
