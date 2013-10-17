class TrainersController < ApplicationController

  # GET '/programmers'
  def index
    @trainers = Trainer.all
  end

  # GET '/programmers/:id'
  def show
    id = params[:id]
    @trainer = Trainer.find(id)
  end

end