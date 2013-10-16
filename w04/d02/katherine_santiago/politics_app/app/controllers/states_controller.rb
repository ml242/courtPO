class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    id = params[:id]
    @state = State.find(id)
  end

end
