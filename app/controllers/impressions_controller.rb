class ImpressionsController < ApplicationController

  

  def day_count
    start_date = Time.current.beginning_of_day
    end_date = Time.current.end_of_day
    @impression= Impression.where(created_at: start_date..end_date).group('DAY(created_at)').count
  end

  def month_count
    start_date = Time.current.beginning_of_month
    end_date = Time.current.end_of_month
    @impression= Impression.where(created_at: start_date..end_date).group('MONTH(created_at)').count
  end
end
