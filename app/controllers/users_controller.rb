class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
      
        if @user.save
          redirect_to new_user_path
        else
        #render text: params.inspect
          render :new
        end
    end

    private
    def user_params
        #@user = User.new(user_params)
        params.require(:user).permit(:email, :password, :username)
    end
end
