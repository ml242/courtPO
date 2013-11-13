class CreateArticles < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.integer :comment_id
      t.timestamps
    end
  end
end
