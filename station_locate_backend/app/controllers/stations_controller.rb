# require 'rest-client'
require "net/http"

class StationsController < ApplicationController


    def station_params
        params.permit(:longitude, :latitude, :street, :city, :state, :zipcode)
    end
end
