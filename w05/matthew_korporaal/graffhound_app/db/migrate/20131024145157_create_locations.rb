class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location, default: "New York, NY"
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end

end