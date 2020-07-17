class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        @user = User.create(user_params)
            
        redirect_to user_path(@user)
    end
    
    def show
        @user = User.find(params[:id])
    end

    # delete methods
    
    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :email, :username, :password )
        end

end

# NOT SURE IF THESE WILL BE NEEDED; NOT PLANNING ON ALLOWING USERS TO BE EDITED OR UPDATED...
    # def edit
    #     @user = User.find(params[:id])
    # end

    # def update
    #     @user = User.find(params[:id])
    #     @user.update(user_params)
    # end

# FOUND ON WEBSITE TALKING ABOUT API::V1
#create ⇒ Object
#forgot_password ⇒ Object
#reset_password ⇒ Object
#show ⇒ Object