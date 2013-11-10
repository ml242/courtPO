class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :title
      t.text :conflict
      t.text :summary
      t.boolean :is_resolved, :default => false
      t.integer :expiration
      t.integer :user_id
      t.timestamps
    end
  end
end
