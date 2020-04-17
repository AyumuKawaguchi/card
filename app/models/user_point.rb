class UserPoint < ApplicationRecord
  has_many :point_breakdown, dependent: :destroy
  has_many :point_history, through: :point_breakdowns
  
  belongs_to :user

end
