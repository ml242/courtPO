class RefugeesController < ApplicationController
  respond_to :json
  def index
    #change to refugees
    @refugees = Refugee.select("name, id")
    respond_with @refugees
  end
end
