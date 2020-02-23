class LocationsController < ApplicationController

    def index
        locations = Location.all
        render json: locations
    end

    def create
        location = Location.create(location_params)
        # byebug
        userLocations = User.find(location_params[:user_id]).locations
        if location.valid?
            render json: userLocations
        else 
            render json: {error: 'Location not created'}, status: :unprocessable_entity
        end
    end

    def destroy
        location_for_delete = Location.find(params[:id])
        user_id = location_for_delete.user_id
        Location.destroy(params[:id])
        userLocations = User.find(user_id).locations
        render json: userLocations
    end

    private
    def location_params
        params.require(:location).permit(:user_id, :id, :location_name, :street_address, :city, :state, :zipcode, :country)
    end
end
