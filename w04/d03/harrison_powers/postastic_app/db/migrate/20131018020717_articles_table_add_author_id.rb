class ArticlesTableAddAuthorId < ActiveRecord::Migration
  def up
    add_column :articles, :author_id, :integer
  end

  def down
    drop_column :articles, :author_id
  end
end
