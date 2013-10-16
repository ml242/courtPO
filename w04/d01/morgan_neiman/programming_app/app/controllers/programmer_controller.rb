class ProgrammerController < ApplicationController
  def index
      programmers = Person.all
  # binding.pry
  @programmer_names = []
  programmers.entries.each do |programmer|
    @programmer_names << programmer.name
  end
  end
end