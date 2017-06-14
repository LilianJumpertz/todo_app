class AddTodoToTodosub < ActiveRecord::Migration[5.1]
  def change
    add_reference :todosubs, :todo, foreign_key: true
  end
end
