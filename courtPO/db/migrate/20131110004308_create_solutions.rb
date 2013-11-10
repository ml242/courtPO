class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.text :opinion
      t.boolean :is_judgement, :default => false
      t.integer :score
      t.integer :case_id
      t.integer :user_id
      t.timestamps
    end
  end
end
