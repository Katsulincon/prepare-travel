class CountriesController < ApplicationController
  def index
    @countries = Country.all
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      redirect_to countries_path
    else
      render 'index'
    end
  end

  def show
    @country = Country.find(params[:id])
    @place = Place.new
  end

  private

  def country_params
    params.require(:country).permit(:name)

  end
end
