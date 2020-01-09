class LoginController < ApplicationController

    def create
      user = User.find_by(username: params[:username].downcase)
      if user && user.authenticate(params[:password])  
        render json: {token: token(user.id), user: UserSerializer.new(user)}
      else
        render json: { errors: [ "User not found" ] }, status: :unprocessable_entity
      end 
    end
  end
  