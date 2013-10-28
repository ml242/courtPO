class CreateCompanies < ActiveRecord::Migration
  def up
    create_table :companies do |t|
      t.string :name
      t.timestamp
    end
  end

  def down

  end
end
