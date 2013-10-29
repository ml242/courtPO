class CreatePurchasesTable < ActiveRecord::Migration
  def up
    create_table :purchases do |t|
      t.float :price
      t.integer :user_id
      t.integer :song_id

      t.timestamps
    end
  end

  def down
  end
end
