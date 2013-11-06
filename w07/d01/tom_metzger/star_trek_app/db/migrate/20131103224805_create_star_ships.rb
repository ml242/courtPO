class CreateStarShips < ActiveRecord::Migration
  def change
    create_table :star_ships do |t|
      t.string :name
      t.integer :shield_strength, default: 100

      t.timestamps
    end
  end
end
