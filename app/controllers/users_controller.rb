class UsersController < ApplicationController

  impressionist :actions=> [:show, :index]

  def index
    @users = User.all
    @users = User.search(params[:search])
    @user = User.all.sum(:impressions_count)
    
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
