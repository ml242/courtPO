class StatesController < ApplicationController
  def index
    @states = State.all
  end

  def show
    id = params[:id]
    @a_state = State.find(id)
    @senator = @a_state.senators
  end

end
