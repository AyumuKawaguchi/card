class UsersController < ApplicationController

  def index
    @users = User.all
    @users = User.search(params[:search])
    # @user = User.find(params[:id])
    # impressionist(@user, nil, unique: [:session_hash])
  end

  def show
    @user = User.find(params[:id])
      impressionist(@user, nil, :unique => [:session_hash])
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
