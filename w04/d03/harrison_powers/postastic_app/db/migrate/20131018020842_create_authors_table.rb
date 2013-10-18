class CreateAuthorsTable < ActiveRecord::Migration
  def up
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end

  def down
    drop_table :authors
  end
end
