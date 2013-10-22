class CreatePiecesTable < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :name
      t.date :birth
      t.boolean :alive, default: true
      t.text :url, array: true, default: []
      t.integer :artist_id
      t.timestamps
    end
  end
end
