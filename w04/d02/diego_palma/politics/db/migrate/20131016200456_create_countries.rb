class CreateCountries < ActiveRecord::Migration
  def up
    create_table :countries do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :coutries
  end
end
