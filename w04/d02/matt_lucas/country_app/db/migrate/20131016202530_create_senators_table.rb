class CreateSenatorsTable < ActiveRecord::Migration
  def up
    create_table :senators do |t|
      t.string :name
      t.integer :state_id
      t.timestamp
    end
  end

  def down
    drop_table :senators
  end
end
