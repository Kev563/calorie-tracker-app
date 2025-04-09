class CreateProgressLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :progress_logs do |t|
      t.integer :calories_eaten
      t.integer :goal_calories
      t.date :logged_on

      t.timestamps
    end
  end
end
