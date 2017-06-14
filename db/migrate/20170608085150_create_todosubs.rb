class CreateTodosubs < ActiveRecord::Migration[5.1]
  def change
    create_table :todosubs do |t|

      add_reference :todos, :todo, index: true

      t.string :category
      t.string :type
      t.string :content
      t.string :importance
      t.date :timeframe
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
