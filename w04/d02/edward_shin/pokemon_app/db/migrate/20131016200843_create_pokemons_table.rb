class CreatePokemonsTable < ActiveRecord::Migration
  def up
    create_table :pokemons do |t|
      t.string :name
      t.integer :trainer_id
    end
  end

  def down
  end
end
