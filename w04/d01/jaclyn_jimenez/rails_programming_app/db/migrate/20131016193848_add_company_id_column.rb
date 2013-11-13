class AddCompanyIdColumn < ActiveRecord::Migration
  def up
    add_column :programmers, :company_id, :integer
  end

  def down
  end
end
