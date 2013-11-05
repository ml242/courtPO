class RefugeesController < ApplicationController
  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @refugees }
  end
  respond_to :json
  def index
    @refugees = Refugee.all
    respond_with @refugees
  end
  respond_to :json
  def create
    name = params["refugee"]
    refugee = Refugee.create(name)
    redirect_to '/'
  end
end
