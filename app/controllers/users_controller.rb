class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # @user = User.new(user_params)
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.js
      else
        render "new"
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
