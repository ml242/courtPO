class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :age
      t.string :tag_line
      t.string :image_url
      t.integer :score, :default => 0

      t.timestamps
    end
  end
end
