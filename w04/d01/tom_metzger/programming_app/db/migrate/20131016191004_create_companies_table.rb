class CreateCompaniesTable < ActiveRecord::Migration
  def up
    create_table :companies do |t|
      t.string      :name
      t.timestamps
    end
  end

  def down
    drop_table :companies
  end
end
