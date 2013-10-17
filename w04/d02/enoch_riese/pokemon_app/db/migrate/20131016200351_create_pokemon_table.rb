class CreatePokemonTable < ActiveRecord::Migration
  def up
    create_table :pokemons do |t|
      t.string :name
      t.integer :trainer_id
      t.string :moves
      t.integer :level
      t.string :types
    end
  end

  def down
  end
end
