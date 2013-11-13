class AddTimestampsColumn < ActiveRecord::Migration
  def up
    change_table :programmers do |t|
      t.timestamps
    end
  end

  def down
    drop table :programmers
  end

end
