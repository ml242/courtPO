class Programmers < ActiveRecord::Migration
  def up
    create_table :programmers do |t|
      t.string :name
      t.string :github_username
      t.string :twitter_username
      t.string :img_url
      t.timestamps
    end
  end

  def down
    drop_table :programmers
  end
end
