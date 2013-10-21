class CreateArticlesAndComments < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :title
      t.text  :body, :limit => nil
      t.timestamps
    end

    create_table :comments do |t|
      t.belongs_to :article
      t.text :body, :limit => nil
      t.timestamps
    end
  end

  def down
    drop_table :articles
    drop_table :comments
  end


end
