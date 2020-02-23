class StationsController < ApplicationController
    before_action :authorized, only: [:show]
    def index
        stations = Station.all
        render json: stations
    end


    def create
        station = Station.create(station_params)
        userStations = User.find(params[:user_id]).stations
        # byebug
        if station.valid?
            render json: userStations
        else 
            render json: {error: 'Station not added'}, status: :unprocessable_entity
        end
    end

    def destroy
        station_for_delete = Station.find_by(station_id: params[:id])
        user_id = station_for_delete.user_id
        Station.destroy(station_for_delete.id)
        userStations = User.find(user_id).stations
        render json: userStations
    end

    private
    def station_params
        params.permit(:user_id, :station_id, :station_name, :owner_network, :owner_network_web, :hours, :rates, :distance, :phone_no, :status, :public_or_private, :access, :accepted_payments, :longitude, :latitude, :street_address, :country, :state, :city, :intersection_directions, :zipcode, :facility_type, :no_of_fast_chargers, :no_of_level_2_EVSE, :no_of_level_1_EVSE, :ev_connector_types, :renewable_source, :geocode_accuracy, :in_my_stations)
    end
end
