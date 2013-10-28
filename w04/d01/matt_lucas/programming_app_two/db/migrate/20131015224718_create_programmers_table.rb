class CreateProgrammersTable < ActiveRecord::Migration
  def up
    create_table :programmers do |t|
      t.string :name
      t.string :twitter
      t.string :github
      t.string :img_url
    end
  end

    def down
      drop_table :programmers
    end
  end
