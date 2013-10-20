class CreateArticlesTagsJoinTable < ActiveRecord::Migration
  def change
    create_table :articles_tags, id: false do |t|
      t.integer :article_id
      t.integer :tag_id
    end
  end
end
