class AddTimeStampsToTasks < ActiveRecord::Migration[5.1]
  def change
    add_timestamps(:tasks, null: true)
  end
end
