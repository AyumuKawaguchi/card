class PointHistory < ApplicationRecord
  has_many :point_breakdown
  has_many :user_point, through: :point_breakdowns

  belongs_to :user
  belongs_to :pointable, polymorphic: true
end
