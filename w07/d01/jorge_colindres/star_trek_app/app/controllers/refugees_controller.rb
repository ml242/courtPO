class RefugeesController < ApplicationController
  respond_to :json

  def index
    @refugees = Refugee.select 'name'
    respond_with @refugees
  end

  def create
    @refugee = Refugee.create params[:refugee]
    respond_with
  end
end
