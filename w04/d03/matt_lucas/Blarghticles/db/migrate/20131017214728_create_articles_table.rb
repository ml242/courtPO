class CreateArticlesTable < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :body
      t.boolean :comments
      t.timestamp
    end
  end
  def down
    drop_table :articles
  end
end