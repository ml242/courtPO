class CreateTrainersTable < ActiveRecord::Migration
  def up
    create_table :trainers do |t|
      t.string :name
      t.integer :gym_id
      t.timestamps
    end
  end

  def down
  end
end
