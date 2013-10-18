class InitializeTables < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.timestamps
    end
    create_table :comments do |t|
      t.text :body
      t.integer :article_id
      t.timestamps
    end
  end

  def down
    drop_table :articles
    drop_table :comments
  end
end
