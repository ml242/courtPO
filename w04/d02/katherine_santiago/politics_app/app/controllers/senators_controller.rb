class SenatorsController < ApplicationController

  def index
    @senators = Senator.all
    @senators_list = []

    @senators.each do |senator|
      @senators_list << senator.name
    end

    @senators_ordered_list = @senators_list.sort
  end

  def show
    id = params[:id]
    @senator = Senator.find(id)
  end

  def new
  end

end
