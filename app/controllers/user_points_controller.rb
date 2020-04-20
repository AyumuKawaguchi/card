class UserPointsController < ApplicationController

  def day_point
    @date = Date.current.strftime('%Y/%m')
    @users = User.group("DAY(created_at)").count
    @impressions = Impression.group("MONTH(created_at)").count
  end

  def month_point
    @date = Date.current.strftime('%Y')
    @users = User.group("MONTH(created_at)").count
    @impressions = Impression.group("MONTH(created_at)").count
  end
end
