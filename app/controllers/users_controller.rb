class UsersController < ApplicationController
    
    def index
        @users = User.all 
        render json: @users.to_json
    end
    
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


# FOUND ON WEBSITE TALKING ABOUT API::V1
#create ⇒ Object
#forgot_password ⇒ Object
#reset_password ⇒ Object
#show ⇒ Object