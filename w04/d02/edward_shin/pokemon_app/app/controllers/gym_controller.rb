class GymController < ActionController::Base
  def index
    @gyms = Gym.all
  end
  def gym
    id = params[:id]
    @gym_info = Gym.find(id)
  end
end