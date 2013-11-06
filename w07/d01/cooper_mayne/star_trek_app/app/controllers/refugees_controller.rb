class RefugeesController < ApplicationController
  def create
    r = Refugee.new
    r.name = params["name"]
    r.save
    render :json => ""
  end
end
