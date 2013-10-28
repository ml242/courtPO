class CreatePicsTable < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :url
      t.integer :piece_id
      t.timestamps
    end
  end
end