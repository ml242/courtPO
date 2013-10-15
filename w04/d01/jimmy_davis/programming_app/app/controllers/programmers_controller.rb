class ProgrammersController < ApplicationController

  def index
    @programmers = Programmer.all
  end

end
