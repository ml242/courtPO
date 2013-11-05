class RefugeesController < ApplicationController
  def index
    @refugees = Refugee.select("name, id")
    render :json => @refugees
  end

  def create
    @refugee = Refugee.new(params[:refugee])
  end
end
