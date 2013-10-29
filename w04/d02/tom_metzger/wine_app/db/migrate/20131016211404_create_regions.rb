class CreateRegions < ActiveRecord::Migration
  def up
    create_table :regions do |t|
      t.string      :name
      t.integer     :country_id
      t.timestamp
    end
  end

  def down
    drop_table :regions
  end
end
