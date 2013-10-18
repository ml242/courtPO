class CreateTags < ActiveRecord::Migration
  def up
    create_table :tags do |t|
      t.string :body
    end
  end

  def down
    drop_table :tags
  end
end
