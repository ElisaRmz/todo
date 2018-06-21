class RemoveColumnColorFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :color, :string
  end
end
