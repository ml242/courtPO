class CreateSongsTable < ActiveRecord::Migration
  def up
    create_table :songs do |t|
      t.string :title
      t.float :price
      t.integer :album_id
      t.integer :artist_id
    end
  end

  def down
  end
end
