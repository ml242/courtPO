class RefugeesController < ApplicationController
  respond_to :json

  def index
    @refugees = Refugee.all
    respond_with @refugees
  end

end
