class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def index
        @users = User.all 
        render json: @users.to_json
    end
    
    def new
        @user = User.new
    end
    
    def create
        # byebug
        @user = User.create(first_name: user_params[:firstname], last_name: user_params[:lastname], email: user_params[:email], username: user_params[:username], password: user_params[:password])
        if @user.valid?
            token = issue_token(@user)
            render json: {id: @user.id, username: @user.username, jwt: token}
        else
            render json: { error: 'USER COULD NOT BE FOUND' }, status: 401
        end
    end
    
    def show
        user = User.find_by(params[:id])
        if logged_in?
            render json: {id: user.id, username: user.username}
        else
            render json: {error: 'USER COULD NOT BE FOUND'}, status: 401
        end
    end


    
    private
        def user_params
            params.permit(:firstname, :lastname, :email, :username, :password )
        end

end


# FOUND ON WEBSITE TALKING ABOUT API::V1
#create ⇒ Object
#forgot_password ⇒ Object
#reset_password ⇒ Object
#show ⇒ Object