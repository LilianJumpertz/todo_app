class RemoveTypeFromTodos < ActiveRecord::Migration[5.1]
  def change
    remove_column :todos, :type, :string
  end
end
