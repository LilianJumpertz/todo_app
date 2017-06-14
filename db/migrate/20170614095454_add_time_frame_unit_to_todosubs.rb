class AddTimeFrameUnitToTodosubs < ActiveRecord::Migration[5.1]
  def change
    add_column :todosubs, :timeframe_unit, :string
  end
end
