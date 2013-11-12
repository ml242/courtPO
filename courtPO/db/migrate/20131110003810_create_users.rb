class CreateUsers < ActiveRecord::Migration
# TODO add default to score
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :twitter
      t.string :image
      t.string :password_digest
      t.integer :num_best_solutions
      t.integer :score_total #should this default to 0?
      t.string :uid
      t.string :provider
      t.string :nickname
      t.timestamps
    end
  end
end
