class CreateProgrammersTable < ActiveRecord::Migration
  def up
    create_table :programmers do |t|
      t.string :name
      t.string :twitter_acct
      t.string :github_acct
      t.string :avatar_url
      t.timestamps
    end
  end

  def down
    drop_table :programmers
  end
end
