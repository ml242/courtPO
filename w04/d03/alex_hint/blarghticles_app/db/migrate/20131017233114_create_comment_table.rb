class CreateCommentTable < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :body
      t.string :article_id
      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end