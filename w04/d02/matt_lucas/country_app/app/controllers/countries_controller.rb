class CountriesController < ActionController::Base
  attr_accessor :name

  def index
    @countries = Country.all
  end

  def new
  end

  def create
    name = param["name"]
    country = Country.create(name: name)
    country.save
    redirect_to("/countries/#{country.country_id}")
  end

  def show
    id = params[:id]
    @country = Country.find(id)
  end

  def edit
    id = params[:id]
    @country = Country.find(id)
  end

  def update
  end

  def destroy
    id = params[:id]
    Country.delete(id)
    redirect_to("/countries")
  end
end
