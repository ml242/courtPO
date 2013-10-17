class CountriesController < ActionController::Base
  attr_accessor :name

  def index
    @list = Country.all
  end

  def new
  end

  def show
    id = params[:id]
    @country = Country.find(id)
  end

  def edit
    id = params[:id]
    @country = Country.find(id)
  end

  def create
    id = params[:id]
    c1 = Country.create(
      #name = #params
      # etc...
    )
    redirect_to("/countries/#{c1.id}")
  end


  def update
  end

  def destroy
  end
end
