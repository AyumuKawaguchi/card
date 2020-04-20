class ImpressionsController < ApplicationController
  def day_count
    @date = Date.current.strftime('%Y/%m')
    start_date = Time.current.beginning_of_month
    end_date = Time.current.end_of_month
    @impression = Impression.where(created_at: start_date..end_date).group("DAY(created_at)").count
    @impressions = Impression.group("MONTH(created_at)").count

  end
  def month_count
    
    @impressions = Impression.group("MONTH(created_at)").count  
    @date = Date.current.strftime('%Y')
  end
end
