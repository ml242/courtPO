class CreateProgrammersTable < ActiveRecord::Migration

  def up
    create_table :programmers do |t|
      t.string :name
      t.string :twitter_pic
      t.string :twitter_username
    end
  end

  def down
    drop_table :programmers
  end

end
