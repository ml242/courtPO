class TrainersController < ApplicationController

  def index
    @trainers = Trainer.all
  end

  def new
  end

  def create
    t1 = Trainer.create(
      :name => params[:name],
      :age => params[:age]
    )
    redirect_to("/trainers/#{t1.id}")
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
    t1 = Trainer.find(id)
    t1.name = params[:name]
    t1.age = params[:age]
    t1.save
    redirect_to("/trainers/#{id}")
  end

  def destroy
    id = params[:id]
    Trainer.find(id).destroy
    redirect_to('/trainers')
  end

end
