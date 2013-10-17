class TrainersController < ApplicationController

  # GET from '/trainers'
  def index
    @all_trainers = Trainer.all
  end

  # GET from '/trainers/new'
  def new
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
  end

  # POST from '/trainers'
  def create
    name = params[:name]

    trainer = Trainer.create :name => name
    id = trainer.id

    redirect_to "/trainers/#{id}"
  end

  # PUT from '/trainers/:id'
  def update
    id = params[:id]
    name = params[:name]

    trainer = Trainer.find id
    trainer.update_attributes :name => name

    redirect_to "/trainers/#{id}"
  end

  # DELETE from '/trainers/:id'
  def destroy
    id = params[:id]

    Trainer.delete id

    redirect_to '/trainers'
  end
end
