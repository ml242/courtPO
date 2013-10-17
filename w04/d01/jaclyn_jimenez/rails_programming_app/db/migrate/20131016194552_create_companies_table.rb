class CreateCompaniesTable < ActiveRecord::Migration
  def up
    create_table :companies do |t|
      t.string :name
    end
  end

  def down
    drop_table :companies
  end
end
