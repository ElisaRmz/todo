class CreateJoinTableTaskProyect < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tasks, :proyects do |t|
      # t.index [:task_id, :proyect_id]
      # t.index [:proyect_id, :task_id]
    end
  end
end
