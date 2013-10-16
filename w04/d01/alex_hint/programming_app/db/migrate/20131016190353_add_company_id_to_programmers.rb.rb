class AddCompanyIdToProgrammers < ActiveRecord::Migration
  def change
    add_column :programmers, :company_id, :integer
  end
end
