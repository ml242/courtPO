class CreateArticleComments < ActiveRecord::Migration
  def up
    create_table :articles_comments, id: false do |t|
      t.integer :article_id
      t.integer :comment_id
    end
  end

  def down
  end
end

