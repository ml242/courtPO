class CreateNameOfTable < ActiveRecord::Migration
  def up
    create_table :programmers do |t|
      t.string :name
      t.string :twit_pic
      t.string :twitter_username
      t.timestamps
    end
  end

  def down
    drop_table :programmers
  end
end
