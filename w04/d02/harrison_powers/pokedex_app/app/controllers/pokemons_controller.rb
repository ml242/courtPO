class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.all
  end

  def new
  end

  def create
    p1 = Pokemon.create(
      :name => params[:name],
      :type1 => params[:type1],
      :type2 => params[:type2],
      :ability1 => params[:ability1],
      :gender_ratio => params[:gender_ratio],
      :experience_curve => params[:experience_curve],
      :catch_rate => params[:catch_rate],
      :base_exp => params[:base_exp],
      :base_stats_hp => params[:base_stats_hp],
      :base_stats_atk => params[:base_stats_atk],
      :base_stats_def => params[:base_stats_def],
      :base_stats_spatk => params[:base_stats_spatk],
      :base_stats_spdef => params[:base_stats_spdef],
      :base_stats_speed => params[:base_stats_speed],
      :evolve_to => params[:evolve_to],
      :evolve_level => params[:evolve_level],
      :learnabletm => params[:learnabletm],
      :spatk => params[:spatk]
    )
    redirect_to("/pokemons/#{p1.id}")
  end

  def show
    id = params[:id]
    @pokemon = Pokemon.find(id)
  end

  def edit
    id = params[:id]
    @pokemon = Pokemon.find(id)
  end

  def update
    id = params[:id]
    p1 = Pokemon.find(id)
    p1.name = params[:name]
    p1.type1 = params[:type1]
    p1.type2 = params[:type2]
    p1.ability1 = params[:ability1]
    p1.gender_ratio = params[:gender_ratio]
    p1.experience_curve = params[:experience_curve]
    p1.catch_rate = params[:catch_rate]
    p1.base_exp = params[:base_exp]
    p1.base_stats_hp = params[:base_stats_hp]
    p1.base_stats_atk = params[:base_stats_atk]
    p1.base_stats_def = params[:base_stats_def]
    p1.base_stats_spatk = params[:base_stats_spatk]
    p1.base_stats_spdef = params[:base_stats_spdef]
    p1.base_stats_speed = params[:base_stats_speed]
    p1.evolve_to = params[:evolve_to]
    p1.evolve_level = params[:evolve_level]
    p1.learnabletm = params[:learnabletm]
    p1.spatk = params[:spatk]
    p1.save
    redirect_to("/pokemons/#{id}")
  end

  def destroy
    id = params[:id]
    p1 = Pokemon.find(id)
    p1.destroy
    redirect_to('/pokemons')
  end

end
