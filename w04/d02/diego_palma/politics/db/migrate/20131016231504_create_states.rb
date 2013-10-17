class CreateStates < ActiveRecord::Migration
  def up
    create_table :states do |t|
      t.string :name
      t.integer :country_id
      t.timestamps
    end

  end

  def down
  end
end
