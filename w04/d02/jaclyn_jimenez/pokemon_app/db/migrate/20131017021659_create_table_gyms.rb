class CreateTableGyms < ActiveRecord::Migration
  def up
    create_table :gyms do |t|
      t.string :name
      t.string :elemental
    end
  end

  def down
    drop_table :gyms
  end
end
