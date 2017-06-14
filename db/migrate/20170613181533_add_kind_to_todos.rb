class AddKindToTodos < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :kind, :string
  end
end
