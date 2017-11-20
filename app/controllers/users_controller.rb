class UsersController < ApplicationController

 layout 'user'

 before_action :confirm_logged_in

  def index
    @users = User.all
  end

  def show
   @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Student created successfully.'
      redirect_to(users_path)
    else
      render('new')
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = 'User updated successfully.'
      redirect_to(users_path)
    else
      render('edit')
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User destroyed successfully."
    redirect_to(users_path)
  end

  private

  def user_params
    # Permit :password, but NOT :password_digest
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password
    )
  end

end
