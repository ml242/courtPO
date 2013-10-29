class CreateUsersTable < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :email
      t.string :password
      t.boolean :admin, default: false

      t.timestamps
    end
  end

  def down
  end
end