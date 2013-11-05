class CreateRefugees < ActiveRecord::Migration
  def change
    create_table :refugees do |t|
      t.string :name

      t.timestamps
    end
  end
end
