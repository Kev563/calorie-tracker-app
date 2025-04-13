class AddUserIdToProgressLogs < ActiveRecord::Migration[8.0]
  def change
    add_reference :progress_logs, :user, null: true, foreign_key: true
  end
end
