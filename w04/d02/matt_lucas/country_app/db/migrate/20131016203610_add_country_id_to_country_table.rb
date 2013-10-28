class AddCountryIdToCountryTable < ActiveRecord::Migration
  def change
    add_column :countries, :country_id, :integer
  end
end
