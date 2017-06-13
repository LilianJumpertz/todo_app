class AddKindToToDoSubs < ActiveRecord::Migration[5.1]
  def change
    add_column :to_do_subs, :kind, :string
  end
end
