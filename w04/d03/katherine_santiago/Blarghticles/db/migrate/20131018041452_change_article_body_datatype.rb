class ChangeArticleBodyDatatype < ActiveRecord::Migration
  def up
    change_column :articles, :body, :text
  end

  def down
    change_column :articles, :body, :string
  end
end
