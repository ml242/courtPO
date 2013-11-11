class RemoveNumCasesColumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :num_cases
  end
end
