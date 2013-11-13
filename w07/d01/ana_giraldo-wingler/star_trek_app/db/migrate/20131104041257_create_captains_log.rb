class CreateCaptainsLog < ActiveRecord::Migration
  def change
    create_table :captains_log do |t|
      t.string :title
      t.text :message
      t.timestamps
    end
  end
end
