class StatesController < ActionController::Base
  attr_accessor :name

  def index
    @list = State.all
  end

  def new
  end

  def show
    id = params[:id]
    @country = State.find(id)
  end

  def edit
    id = params[:id]
    @country = State.find(id)
  end

  def create
    id = params[:id]
    c1 = State.create(
      #name = #params
      # etc...
    )
    redirect_to("/states/#{s1.id}")
  end


  def update
  end

  def destroy
  end
end