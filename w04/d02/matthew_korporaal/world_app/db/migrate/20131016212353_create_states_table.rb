class CreateStatesTable < ActiveRecord::Migration
  def up
    create_table :states do |t|
      t.string :name
      t.string :motto
      t.integer :country_id
      t.timestamps
    end
  end

  def down
    drop_table :states
  end
end
