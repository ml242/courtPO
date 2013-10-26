class CreatePiecesTable < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :name
      t.date :birth
      t.string :location, default: "New York"
      t.float :latitude
      t.float :longitude
      t.boolean :alive, default: true
      t.integer :artist_id
      t.timestamps
    end
  end
end
