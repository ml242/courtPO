class PokemonController < ActionController::Base

  def index

  end

  def new

  end

  def create
    name = "#{params[:name]}"
    nickname = "#{params[:nickname]}"
    trainer = params[:trainer]
    Pokemon.create({name: name, nickname: nickname, trainer_id: trainer })
    redirect_to "/pokemon"
  end

  def show
    id = params[:id]
    @pokemon = Pokemon.find(id)
  end

  def edit
    @id = params[:id]
    @pokemon = Pokemon.find(@id)
  end

  def update
    id = params[:id]
    name = "#{params[:name]}"
    nickname = "#{params[:nickname]}"
    trainer = params[:trainer]
    pokemon = Pokemon.find(id)
    pokemon.name = name
    pokemon.nickname = nickname
    pokemon.trainer_id = trainer
    pokemon.save
    redirect_to "/pokemon/#{pokemon.id}"
  end

  def delete
    id = params[:id]
    @pokemon = Pokemon.find(id)
    @pokemon.destroy
    redirect_to "/pokemon"
  end

end
