class PlacesController < ApplicationController

    def index
        @places = Place.all
    end

    def show
    end

    def new
        @place = Place.new
    end

    def create
        @place = Place.new(params["city"])
        @place.save
        redirect_to "/places"
    end

end
