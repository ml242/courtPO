class RefugeesController < ApplicationController


  def index
    @refugees = Refugee.select("name, id")
    render :json => @refugees
  end

  def create
   #binding.pry

    vulcan_name = params[:refugee][:name]
    r = Refugee.new
    r.name = vulcan_name
    r.save
    redirect_to('/refugees')
  end
end
