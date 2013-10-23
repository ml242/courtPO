class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :entry
      t.integer :piece_id
      t.integer :user_id
      t.timestamps
    end
  end
end
