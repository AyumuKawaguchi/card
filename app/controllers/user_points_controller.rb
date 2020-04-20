class UserPointsController < ApplicationController

  def day_point
    range = Time.current.beginning_of_day..Time.current.end_of_day
    # def amount
    #   user_points.sum(:amount)
    # end
    # @amout = user_points.amount
    # @user.user_points
    # if current_user.where(current_sign_in_at: range) != @user.where(last_sign_in_at: range) 
    #   amount += 1
    # else
    #   nil
    # end
  end

end
