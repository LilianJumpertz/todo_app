class RemoveTodoFromTodo < ActiveRecord::Migration[5.1]
  def change
    remove_reference :todos, :todo
  end
end
