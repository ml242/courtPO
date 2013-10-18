class CreateTableArticles < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :name
      t.string :author
      t.text :content
      t.timestamps
    end
  end

  def down
    drop_table :articles
  end
end
