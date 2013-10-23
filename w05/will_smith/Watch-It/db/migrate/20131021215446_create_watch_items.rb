class CreateWatchItems < ActiveRecord::Migration
  def change
    create_table :watch_items do |t|
      t.integer :user_id
      t.integer :title_id
      t.boolean :watched, :default => false

      t.timestamps
    end
  end
end
