class RefugeesController < ApplicationController
  respond_to :json

  def index
    @refugees = Refugee.select("name, id")
    render_with @refugees
  end

  def show
    @refugee = Refugee.find(params[:id])
  end

  def create
    # @refugee = Refugee.new(params[:refugee])
    vulcan_name = params[:refugees][:name]
    r = Refugee.new
    r.name = vulcan_name
    r.save
    redirect_to('/')
  end

  def update
    @refugee = Refugee.find(params[:id])
  end

  def destroy
    @refugee = Refugee.find(params[:id])
  end

end
