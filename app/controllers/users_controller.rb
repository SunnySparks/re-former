class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id].to_i)
  end

  def update
    @user = User.update(user_params)
    if User.update(user_params)
      redirect_to new_user_path notice: 'User successfully updated'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :username)
  end
end
