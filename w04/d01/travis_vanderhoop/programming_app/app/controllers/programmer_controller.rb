class ProgrammerController < ApplicationController
  def index
    @programmers = Programmer.all
    binding.pry
  end

  def justone
    id = params[:id]
    @programmer = Programmer.find(id)
    binding.pry
  end
end

