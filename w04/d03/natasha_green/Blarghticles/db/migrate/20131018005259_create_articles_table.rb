class CreateArticlesTable < ActiveRecord::Migration
 def change
  create_table :articles do |t|
  t.string :title
  t.string :body
  t.string :comments
  t.timestamps
  end
end
end

