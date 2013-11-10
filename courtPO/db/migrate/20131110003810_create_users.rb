class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :twitter
      t.string :password_digest
      t.integer :num_cases
      t.integer :num_best_solutions
      t.integer :score_total
      t.timestamps
    end
  end
end
