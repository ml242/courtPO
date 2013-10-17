class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
  end

  def show
    id = params[:id]
    @trainer = Trainer.find(id)
  end

  def edit
    id = params[:id]
    @trainer = Trainer.find(id)
  end

  def update
    id = params[:id]
    trainer = Trainer.find(id)
    trainer.name = params[:name]
    trainer.gym_id = params[:gym_id]
    trainer.save
    redirect_to "/trainers/#{id}"
  end

  def new #sends users to the form to create a new trainer

  end

  def create  #actually saves the inputs from the form above into the database
    trainer = Trainer.new
    trainer.name = params[:name]
    trainer.gym_id = params[:gym_id]
    trainer.save
    redirect_to '/trainers'
  end

end
