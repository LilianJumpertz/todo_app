class ChangeTimeframeFormatInToDoSubs < ActiveRecord::Migration[5.1]
  def change
    remove_column :to_do_subs, :timeframe, :date
    add_column :to_do_subs, :timeframe, :numeric
  end
end
