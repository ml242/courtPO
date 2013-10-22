class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :entry
      t.integer :user_id
      t.integer :piece_id
      t.timestamps
    end
  end
end
