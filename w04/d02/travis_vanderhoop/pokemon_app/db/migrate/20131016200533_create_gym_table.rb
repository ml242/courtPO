class CreateGymTable < ActiveRecord::Migration
  def up
    create_table :gyms do |t|
      t.string :name
      t.timestamps
    end

  end

  def down
  end
end
