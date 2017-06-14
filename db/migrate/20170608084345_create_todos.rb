class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      
      t.string :goal
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
