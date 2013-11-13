class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :body
      t.timestamps
    end
  end

  def down
  end
end
