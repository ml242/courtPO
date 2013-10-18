class CreateArticlesAndCommentsTable < ActiveRecord::Migration
  def up
    create_table :articles do |t|       #I don't need to include comments in this table, because the link happens via an 'article_id' forreign key. The relationship is declared in the models.
      t.string  :title
      t.text    :body
      t.timestamps
    end

    create_table :comments do |t|
      t.text      :body
      t.integer   :article_id
      t.timestamps
    end
  end

  def down
  end
end
