class CreateArtistsTable < ActiveRecord::Migration
  def up
    create_table :artists do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
  end
end
