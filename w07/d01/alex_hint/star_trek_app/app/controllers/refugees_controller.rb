class RefugeesController < ApplicationController
  respond_to :json
  def index
    #change to refugees
    @refugees = Refugee.select("name, id")
    respond_with @refugees
  end
  def create
    #binding.pry

    # params:
    # {
    #    "refugee" => {
    #     "name" => "Sarek"
    # },
    #     "format" => :json,
    #     "action" => "create",
    # "controller" => "refugees"
    # }

    vulcan_name = params[:refugee][:name]
    r = Refugee.new
    r.name = vulcan_name
    r.save
    redirect_to('/refugees')
  end
end
