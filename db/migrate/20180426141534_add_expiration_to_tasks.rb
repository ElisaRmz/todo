class AddExpirationToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :expiration, :date
  end
end
