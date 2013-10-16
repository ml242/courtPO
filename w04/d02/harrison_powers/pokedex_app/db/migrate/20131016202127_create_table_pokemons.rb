class CreateTablePokemons < ActiveRecord::Migration
  def up
    create_table :pokemons do |t|
      t.string :name
      t.string :type1
      t.string :type2
      t.string :ability1
      t.float :gender_ratio
      t.string :experience_curve
      t.integer :catch_rate
      t.integer :base_exp
      t.integer :base_stats_hp
      t.integer :base_stats_atk
      t.integer :base_stats_def
      t.integer :base_stats_spatk
      t.integer :base_stats_spdef
      t.integer :base_stats_speed
      t.integer :evolve_to
      t.integer :evolve_level
      t.text :learnabletm
      t.string :spatk
    end
  end

  def down
    drop_table :pokemons
  end
end
