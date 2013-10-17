class CreateWineries < ActiveRecord::Migration
  def up
    create_table :wineries do |t|
      t.string        :name
      t.string        :owner
      t.integer       :region_id
      t.timestamp
    end
  end

  def down
    drop_table :wineries
  end
end
