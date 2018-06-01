class DropTableProyectsTasks < ActiveRecord::Migration[5.1]
  def change
    drop_table(:proyects_tasks)
  end
end
