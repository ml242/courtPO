class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.integer :article_id
      t.text :body
      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end
