class GymsController < ApplicationController

  # GET from '/gyms'
  def index
    @all_gyms = Gym.all
  end

  # GET from '/gyms/new'
  def new
  end

  # GET from '/gyms/:id'
  def show
    id = params[:id]
    @gym = Gym.find id
  end

  # GET from 'gyms/:id/edit'
  def edit
    id = params[:id]
    @gym = Gym.find id
  end

  # POST from '/gyms'
  def create
    name = params[:name]

    gym = Gym.create name: name
    id = gym.id

    redirect_to "/gyms/#{id}"
  end

  # PUT from '/gyms/:id'
  def update
    id = params[:id]
    name = params[:name]

    gym = Gym.find id
    gym.update_attributes name: name

    redirect_to "/gyms/#{id}"
  end

  # DELETE from '/gyms/:id'
  def destroy
    id = params[:id]

    Gym.delete id

    redirect_to '/gyms'
  end
end
