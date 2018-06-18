class AddInactiveToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :inactive, :boolean
  end
end
