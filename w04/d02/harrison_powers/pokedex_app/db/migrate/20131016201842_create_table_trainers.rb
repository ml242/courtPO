class CreateTableTrainers < ActiveRecord::Migration
  def up
    create_table :trainers do |t|
      t.string :name
      t.integer :age
      t.integer :gym_id
      t.timestamps
    end
  end

  def down
    drop_table :trainers
  end
end
