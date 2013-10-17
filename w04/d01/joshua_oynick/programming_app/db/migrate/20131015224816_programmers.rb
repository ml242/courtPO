class Programmers < ActiveRecord::Migration
  def up
    create_table :programmers do |programmer|
      programmer.string :name
      programmer.string :twitter_pic
      programmer.string :twitter_username
      programmer.timestamps
    end
  end

  def down
    drop_table :programmers
  end
end
