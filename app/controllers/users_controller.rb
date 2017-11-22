class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    today = Time.now.strftime("%d/%m/%Y")
    today_matches = Match.where(["day = ?", "#{today}"])

    today_match = today_matches.find_by_match1(@user.id)
    today_match = today_matches.find_by_match2(@user.id) if today_matches.find_by_match1(@user.id).nil?
    if !today_match.nil?
    @user_today_match = User.find(today_match.match1)   if @user.id != today_match.match1
    @user_today_match = User.find(today_match.match2)   if @user.id != today_match.match2
  end


    user_id = @user.id
    user_matches_history = Match.where(["match1 = ? OR match2 = ?", user_id , user_id])
    @user_match = []
    user_matches_history.each do |match|
      @user_match.push(match.day)
      id = match.match1
      @user_match.push(User.find(id).first_name)
      id = match.match2
      @user_match.push(User.find(id).first_name)
    end

    @users = User.all

    if current_user.admin?
      render 'users/admin/index'
    else
      render 'users/student/show'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
       @user.admin? ? (redirect_to 'users/admin/index') : (redirect_to 'users/student/show')
    else
      render 'edit'
    end
 end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :admin)
  end





end
