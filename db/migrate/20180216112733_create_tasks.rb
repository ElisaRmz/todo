class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.boolean :finish
      t.string :name
      t.text :note
    end
  end
end
