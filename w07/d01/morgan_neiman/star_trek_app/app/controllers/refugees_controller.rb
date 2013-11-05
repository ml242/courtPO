class RefugeesController < ApplicationController
  def index
    @refugees = Refugee.all
    render :json => @refugees
  end
  def create
    refugee = Refugee.new
    # binding.pry
    refugee.name = params["name"]
    refugee.save
    @refugee = refugee
    render :json => @refugee
  end
end
