class RemoveTypeFromToDoSubs < ActiveRecord::Migration[5.1]
  def change
    remove_column :to_do_subs, :type, :string
  end
end
