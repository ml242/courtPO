class SenatorsController < ApplicationController

  def index
    @senators = Senator.all
    @senator_list = Array.new
    @senators.each do |senator|
      @senator_list << senator.name
    end
    @senator_ordered_list = @senator_list.sort
  end


  def show
    id = params[:id]
    @a_senator = Senator.find(id)
  end

  def new

  end


end
