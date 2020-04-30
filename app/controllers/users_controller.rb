class UsersController < ApplicationController

  impressionist :actions=> [:show, :index]

  def index
    start_date = Time.current.beginning_of_day
    end_date = Time.current.end_of_day
    @user = User.all.sum(:impressions_count)
    @impression= Impression.where(created_at: start_date..end_date).group('DAY(created_at)').count
    @impressions = Impression.group("MONTH(created_at)").count

  end

  def search

    start_date = Time.current.beginning_of_day
    end_date = Time.current.end_of_day
    @user = User.all.sum(:impressions_count)
    @impression= Impression.where(created_at: start_date..end_date).group('DAY(created_at)').count
    @impressions = Impression.group("MONTH(created_at)").count
    if params[:q].present?
      @q = User.ransack(search_params)
      @users = @q.result
    else
      params[:q] = {sorts: 'id_desc'}
      @q = User.ransack()
      @users = User.all
    end

  end

  def show
    @user = User.find(params[:id])
    @new = @user.sign_in_count
    if @user.current_sign_in_at.strftime("%Y%m%d") != @user.last_sign_in_at.strftime("%Y%m%d")
      @user.increment!(:points, 1)
    end
    if @new == 1 
       @user.increment!(:points, 1)
    end
  end
 
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def search_params
    params.require(:q).permit(:sorts)
  end
  private

  def user_params
    params.require(:user).permit(:username, :email, :points)
  end
end
