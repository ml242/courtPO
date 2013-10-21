class TrainersController < ApplicationController

  # GET from '/trainers'
  def index
    @all_trainers = Trainer.all
  end

  # GET from '/trainers/new'
  def new
    @gyms = Gym.all
  end

  # GET from '/trainers/:id'
  def show
    id = params[:id]
    @trainer = Trainer.find id
  end

  # GET from '/trainers/:id/edit'
  def edit
    id = params[:id]
    @trainer = Trainer.find id
    @gyms = Gym.all
  end

  # POST from '/trainers'
  def create
    trainer_atts = params[:trainer]

    trainer = Trainer.create name: trainer_atts[:name], gym_id: trainer_atts[:gym]
    id = trainer.id

    redirect_to "/trainers/#{id}"
  end

  # PUT from '/trainers/:id'
  def update
    id = params[:id]
    trainer_atts = params[:trainer]

    trainer = Trainer.find id
    trainer.update_attributes name: trainer_atts[:name], gym_id: trainer_atts[:gym]

    redirect_to "/trainers/#{id}"
  end

  # DELETE from '/trainers/:id'
  def destroy
    id = params[:id]

    Trainer.delete id

    redirect_to '/trainers'
  end

end
