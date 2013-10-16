class VotesController < ApplicationController
  def create
    name = params[:mayor]
    redirect_to("/voters/#{name}")
  end

  def show

    @name = params[:name]
  end

end
