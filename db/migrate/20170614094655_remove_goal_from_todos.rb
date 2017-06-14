class RemoveGoalFromTodos < ActiveRecord::Migration[5.1]
  def change
    remove_column :todos, :goal, :string
  end
end
