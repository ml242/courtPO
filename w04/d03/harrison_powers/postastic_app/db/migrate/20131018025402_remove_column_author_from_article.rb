class RemoveColumnAuthorFromArticle < ActiveRecord::Migration
  def up
    remove_column :articles, :author
  end

  def down
    create_column :articles, :author, :string
  end
end
