class UsersController < ApplicationController
 after_action :authenticate_user!

  def index
    @user = current_user
    today = Time.now.strftime("%d/%m/%Y")
    today_matches = Match.where(["day = ?", "#{today}"])
    @user_today_match = today_matches.find_by_Match1(@user.id)
    @user_today_match = today_matches.find_by_Match2(@user.id)
    @user_today_match ||= []
    user_id = @user.id
    @user_matches_history = Match.where(["Match1 = ? or Match2 = ?", user_id , user_id])

    @users = User.all

    if current_user.admin?
      render 'users/admin/index'
    else
      render 'users/student/show'
    end
  end
end
