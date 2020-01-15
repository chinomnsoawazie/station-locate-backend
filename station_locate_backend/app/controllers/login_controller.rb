class LoginController < ApplicationController

    def create
      user = User.find_by(username: user_params[:username])
      if user && user.authenticate(user_params[:password])  
        render json: {token: token(user.id), nrel_api_key: ENV["NREL_API_KEY"], google_maps_api_key: ENV["GOOGLE_MAPS_API_KEY"], user: UserSerializer.new(user)}
      else
        render json: { errors: [ "User not found" ] }, status: :unprocessable_entity
      end 
    end

    def persist
      if decoded_token
        render json: logged_in_user
      end
    end

    def user_params
      params.permit(:username, :password)
    end
  end
  