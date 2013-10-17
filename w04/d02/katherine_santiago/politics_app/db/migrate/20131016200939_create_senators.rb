class CreateSenators < ActiveRecord::Migration
  def up
    create_table :senators do |t|
      t.string :name
      t.integer :state_id
      t.timestamps
    end
  end

  def down
  end
end
