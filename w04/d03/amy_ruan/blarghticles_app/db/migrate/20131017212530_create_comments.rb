class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :body
      t.integer :article_id
    end
  end

  def down
    drop_table :articles
  end
end
