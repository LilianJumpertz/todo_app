class AddKindToTodosubs < ActiveRecord::Migration[5.1]
  def change
    add_column :todosubs, :kind, :string
  end
end
