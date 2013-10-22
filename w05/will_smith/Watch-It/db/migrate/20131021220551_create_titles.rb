class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :title
      t.string :type
      t.text :poster
      t.text :plot
      t.string :imdbID

      t.timestamps
    end
  end
end
