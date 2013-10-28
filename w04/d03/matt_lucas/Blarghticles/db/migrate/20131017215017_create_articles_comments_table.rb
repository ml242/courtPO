class CreateArticlesCommentsTable < ActiveRecord::Migration
  def change
    create_table :articles_comments, id: false do |t|
    t.integer :article_id
    t.integer :comment_id
    end
  end
end