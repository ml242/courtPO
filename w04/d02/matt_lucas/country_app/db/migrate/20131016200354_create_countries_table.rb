class CreateCountriesTable < ActiveRecord::Migration
  def up
    create_table :countries do |t|
      t.string :name
      t.string :continent
      t.timestamp
    end
  end

  def down
    drop_table :countries
  end
end
