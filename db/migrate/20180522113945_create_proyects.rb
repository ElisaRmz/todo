class CreateProyects < ActiveRecord::Migration[5.1]
  def change
    create_table :proyects do |t|
      t.string :name
      t.date :deadline
    end
  end
end
