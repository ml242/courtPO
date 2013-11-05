class CreateCrewMembers < ActiveRecord::Migration
  def change
    create_table :crew_members do |t|
      t.string :name
      t.string :shirt_color, default: 'red'
      t.boolean :on_ship, default: true
      t.integer :star_ship_id

      t.timestamps
    end
  end
end
