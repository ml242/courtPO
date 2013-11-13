class WorldController < ApplicationController
  def index
    @countries = Country.all
  end
  def edit
    @country = Country.find(params['id'])
  end
  def show
    @country = Country.find(params['id'])
    #@wiki = Wikipedia.find( "#{@country.name}")
  end
  def update
    c_id = params['id'].to_i
    country = Country.find(c_id)
    country.name = params['country-name']
    country.states.count.times do |ind|
      state_id = country.states[ind].id
      state = State.find(state_id)
      # Add delete state logic here
      if params["state-name-#{state_id}"] == ""
        State.delete(state_id)
      else
        state.name = params["state-name-#{state_id}"]
        state.motto = params["state-motto-#{state_id}"]
        state.save
      end
      #no way to save state that belongs to country?
      # country.states[ind].name = params["state-name-#{state_id}"]
      # country.states[ind].motto = params["state-motto-#{state_id}"]
      # country.states[ind].save
    end
    country.save
    if params['new-state-name'] != ""
      new_state = State.create(
        :name => params['new-state-name'],
        :motto => params['new-state-motto'])
      new_state.country = country
      new_state.save
    end
    redirect_to("/countries/#{c_id}")
  end
end