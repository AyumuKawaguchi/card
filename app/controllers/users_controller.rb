class UsersController < ApplicationController

  impressionist :actions=> [:show, :index]

  def index

    start_date = Time.current.beginning_of_day
    end_date = Time.current.end_of_day
    @users = User.all
    @users = User.search(params[:search])
    @user = User.all.sum(:impressions_count)
    @impression= Impression.where(created_at: start_date..end_date).group('DAY(created_at)').count
    @impressions = Impression.group("MONTH(created_at)").count

  end

  def show
    @user = User.find(params[:id])
    # impressionist(@user, nil, :unique => [:session_hash])
  end


  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find_by(id: params[:id])
    @user.update(title: params[:title])
    redirect_to("/")
  end

end
