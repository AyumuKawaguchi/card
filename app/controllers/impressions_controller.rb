class ImpressionsController < ApplicationController
  def day_count
    @date = Date.current.strftime('%Y/%m')
    start_date = Time.current.beginning_of_year
    end_date = Time.current.end_of_year
    @impression = Impression.group("DATE(created_at)").count
    @impressions = Impression.group("MONTH(created_at)").count
    @chart = Impression.group("date(created_at)").count
  end

  def month_count
    @date = Date.current.strftime('%Y')
    @impressions = Impression.group("MONTH(created_at)").count  
    @chart = Impression.group("MONTH(created_at)").count
  end
  
end
