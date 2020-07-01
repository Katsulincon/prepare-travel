class PlacesController < ApplicationController
  def create
    @place = Place.new(place_params)
    @country = Country.find(params[:country_id])
    @place.country = @country
    if @place.save
      redirect_to country_path(@place.country)
    else
      render 'countries/show'
    end
  end


  private
  def place_params
    params.require(:place).permit(:name, :address, :latitude, :longitude, photos: [])

  end
end
