class RenameCaptainsLogToCaptainsLogs < ActiveRecord::Migration
  def up
    rename_table :captains_log, :captains_logs
  end

  def down
  end
end
