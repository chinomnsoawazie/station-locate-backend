class LocationsController < ApplicationController

    def index
        locations = Location.all
        render json: locations
    end

    def create
        location = Location.create(location_params)
        if location.valid?
            render json: Location.all
        else 
            render json: {error: 'Location not created'}, status: :unprocessable_entity
        end
    end

    def destroy
        Location.destroy(params[:id])
        render json: Location.all
    end

    private
    def location_params
        params.require(:location).permit(:user_id, :id, :location_name, :street_address, :city, :state, :zipcode, :country)
    end
end
