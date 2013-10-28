class CreateArtistsTable < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.text :bio
      t.string :name
      t.timestamps
    end
  end
end
