class CreateToDoSubs < ActiveRecord::Migration[5.1]
  def change
    create_table :to_do_subs do |t|

      add_reference :to_dos, :to_do, index: true

      t.string :category
      t.string :type
      t.string :content
      t.date :timeframe
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
