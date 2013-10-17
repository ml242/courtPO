class CreateGymsTable < ActiveRecord::Migration
  def up
    create_table :gyms do |t|
      t.string :name
      t.string :location
      t.timestamps
    end
  end

  def down
    drop_table :gyms
  end
end
