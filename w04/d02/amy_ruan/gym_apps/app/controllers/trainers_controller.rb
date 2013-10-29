class TrainersController < ApplicationController

  def index
    @trainers = Trainer.all
  end

  def new
  end

  def create
  end

  def show
    id = params[:id]
    @trainer = Trainer.find(id)
  end

  def delete
    @id = params[:id]
    @id.destroy
  end

  def edit
  end

  def update
  end



end
