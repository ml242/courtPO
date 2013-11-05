class RefugeesController < ApplicationController
respond_to :json

  def index
    @refugees = Refugee.select("name, id")
    respond_with @refugees
  end

  def show
    @refugees = Refugee.find(params[:id])
  end

  def create
    @refugee = Refugee.new
    @refugee.name = params["name"]
    @refugee.save
    respond_with @refugee
  end

  def update
    @refugees = Refugee.find(params[:id])
  end

  def destroy
    @refugees = Refugee.find(params[:id])
  end

end