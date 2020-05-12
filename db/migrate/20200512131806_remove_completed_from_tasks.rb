class RemoveCompletedFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :completed, :boolean
    add_column :tasks, :completed, :boolean, :default => false
  end
end
