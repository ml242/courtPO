class AddColumnToStatesTable < ActiveRecord::Migration
  def change
      add_column :states, :state_name, :string
  end
end
