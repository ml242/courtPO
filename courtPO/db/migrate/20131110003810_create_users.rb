class CreateUsers < ActiveRecord::Migration
# TODO add default to score
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :twitter
      t.string :password_digest
      t.integer :num_cases
      t.integer :num_best_solutions
      t.integer :score_total #should this default to 0?
      t.timestamps
    end
  end
end
