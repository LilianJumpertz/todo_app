class AddTitleToTodosubs < ActiveRecord::Migration[5.1]
  def change
    add_column :todosubs, :title, :string
  end
end
