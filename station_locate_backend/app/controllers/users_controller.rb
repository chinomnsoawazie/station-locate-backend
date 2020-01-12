class UsersController < ApplicationController
    # before_action :authorized
    skip_before_action :authorized, only: [:create]

    def index
      @user = User.all
      render json: @users
    end
  
    def show
      user_id = params[:id]
      if currentt_user_id == user_id.to_i
          user = User.find(user_id)
          render json: user
        else
          render json: {error: 'User not found'}, status: :unauthorized
      end
    end
   
    def create
      @user = User.create(user_params)
      if @user.valid?
          @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), token: @token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
  
    def update
        if logged_in?
            user = User.find(params[:id])
            if user.update(user_params)
              render json: user
            else
              render json: user.errors, status: :unprocessable_entity
            end
        else
            render json: {error: 'Log in to modify details'}, status: :unauthorized
        end

    end
  
    def destroy
      User.destroy(params[:id])
    end
  
    private
   
    def user_params
      params.require(:user).permit(:id, :first_name, :last_name, :email, :username, :password)
    end
end
