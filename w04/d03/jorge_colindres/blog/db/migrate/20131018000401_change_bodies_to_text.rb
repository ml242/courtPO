class ChangeBodiesToText < ActiveRecord::Migration
  def change
    change_column :articles, :body, :text
    change_column :comments, :body, :text
  end
end
