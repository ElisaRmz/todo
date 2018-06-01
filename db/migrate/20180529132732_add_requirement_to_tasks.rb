class AddRequirementToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :requirement, :integer
  end
end
