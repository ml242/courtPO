class CreateFavoritesTable < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :artist_id
      t.integer :piece_id
      t.timestamps
    end
  end
end
