class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.build_info
  end

  def create
    # @user = User.new(user_params)
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render "new"
    end
    # respond_to do |format|
    #   if @user.save
    #     format.js
    #   else
    #     render "new"
    #   end
    # end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, info_attributes: [:id, :user_id, :age, :_destroy => true] )
    # params.require(:user).permit!
  end
end
