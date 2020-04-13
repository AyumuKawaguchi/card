class ProductsController < ApplicationController
  impressionist 

  def index
    @users = User.all
    # @user = User.find(params[:id])
    # impressionist(@user, nil, unique: [:session_hash])
  end

  # def show     
  #   @users = User.all
  #   @user = User.find(params[:id])
  #   impressionist(@user, nil, :unique => [:session_hash])
  # end
  # private

  # def params
  #   params.permit(:id)
  # end

  
end
