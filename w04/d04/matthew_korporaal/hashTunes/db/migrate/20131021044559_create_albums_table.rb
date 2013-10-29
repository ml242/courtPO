class CreateAlbumsTable < ActiveRecord::Migration
  def up
    create_table :albums do |t|
      t.string :name
      t.integer :artist_id
      t.timestamps
    end
  end

  def down
  end
end
