class AddFrecuencyToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :frecuency, :integer
  end
end
