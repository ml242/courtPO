class CreatePeople < ActiveRecord::Migration
  def up
      create_table :people do |t|
      t.string :name
      t.string :twitter_pic
      t.string :twitter_username
      t.string :github_username
    end
  end

  def down
    drop_table
  end
end
