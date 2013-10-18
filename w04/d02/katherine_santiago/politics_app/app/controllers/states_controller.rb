class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    state_id = params[:id]
    @state = State.find(state_id)
    @state_name = @state.name
    @senators = Senator.where(state_id: state_id)
  end

end
