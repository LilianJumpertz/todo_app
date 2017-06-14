class RemoveTypeFromTodosubs < ActiveRecord::Migration[5.1]
  def change
    remove_column :todosubs, :type, :string
  end
end
