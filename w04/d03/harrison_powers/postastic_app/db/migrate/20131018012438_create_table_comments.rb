class CreateTableComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.integer :article_id
      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end
