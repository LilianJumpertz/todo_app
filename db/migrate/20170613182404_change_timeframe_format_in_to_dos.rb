class ChangeTimeframeFormatInToDos < ActiveRecord::Migration[5.1]
  def change
    remove_column :to_dos, :timeframe, :date
    add_column :to_dos, :timeframe, :numeric
  end
end
