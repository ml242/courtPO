class CreateProgrammersTable < ActiveRecord::Migration
  def up
    create_table :programmers do |t|
      t.string :name
      t.string :twitter_pic_url
      t.string :twitter_username
      t.string :github_username
      t.timestamps
    end
  end

  def down
    drop_table :programmers
  end
end
