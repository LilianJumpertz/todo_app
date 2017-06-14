class ChangeTimeframeFormatInTodosubs < ActiveRecord::Migration[5.1]
  def change
    remove_column :todosubs, :timeframe, :date
    add_column :todosubs, :timeframe, :numeric
  end
end
