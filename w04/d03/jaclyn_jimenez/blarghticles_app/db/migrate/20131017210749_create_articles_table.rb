class CreateArticlesTable < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :comments
      t.timestamps
    end
  end

  def down
    drop_table :articles
  end
end
