class SenatorsController < ActionController::Base
  attr_accessor :name

  def index
    @list = Senator.all
  end

  def new
  end

  def show
    id = params[:id]
    @country = Senator.find(id)
  end

  def edit
    id = params[:id]
    @country = Senator.find(id)
  end

  def create
    id = params[:id]
    c1 = Senator.create(
      #name = #params
      # etc...
    )
    redirect_to("/senators/#{s1.id}")
  end


  def update
  end

  def destroy
  end
end