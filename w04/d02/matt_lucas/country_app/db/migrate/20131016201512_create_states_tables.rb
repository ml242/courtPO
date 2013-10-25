class CreateStatesTables < ActiveRecord::Migration
  def up
    create_table :states do |t|
      t.string :name
      t.integer :country_id
    end
  end

  def down
    drop_table :states
  end
end
