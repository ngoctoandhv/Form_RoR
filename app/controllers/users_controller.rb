class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # @user = User.new(user_params)
    @user = User.new(first_name: params[:full_name])
    if @user.save
      redirect_to users_path
    else
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end

end
