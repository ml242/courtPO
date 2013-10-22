class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.integer :user_id
      t.integer :title_id
      t.boolean :watched

      t.timestamps
    end
  end
end
