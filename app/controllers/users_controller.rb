class UsersController < ApplicationController

  def index
    if admin?
      render 'admin/index'
    else
      render 'student/show'
    end

end
