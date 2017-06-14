class ChangeTimeframeFormatInTodos < ActiveRecord::Migration[5.1]
  def change
    remove_column :todos, :timeframe, :date
    add_column :todos, :timeframe, :numeric
  end
end
