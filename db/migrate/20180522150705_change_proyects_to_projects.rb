class ChangeProyectsToProjects < ActiveRecord::Migration[5.1]
  def change
    rename_table :proyects, :projects
  end
end
