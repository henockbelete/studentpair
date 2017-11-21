class UsersController < ApplicationController
 after_action :authenticate_user!

  def index
    @user = current_user
    today = Time.now.strftime("%d/%m/%Y")
    @user_today_match = Matches.find_by_day(today)
    @user_today_match ||= ""
    
    @users = User.all

    if current_user.admin?
      render 'users/admin/index'
    else
      render 'users/student/show'
    end
  end
end
