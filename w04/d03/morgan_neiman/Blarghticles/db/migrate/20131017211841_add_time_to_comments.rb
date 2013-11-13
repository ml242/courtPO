class AddTimeToComments < ActiveRecord::Migration
  def change
    add_column :comments, :time, :time
  end
end
