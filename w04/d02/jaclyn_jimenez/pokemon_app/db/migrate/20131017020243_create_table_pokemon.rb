class CreateTablePokemon < ActiveRecord::Migration
  def up
    create_table :pokemons do |t|
      t.string :name
      t.string :nickname
      t.integer :trainer_id
      t.timestamps
    end
  end

  def down
    drop_table :pokemons
  end
end
