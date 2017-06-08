class CreateToDos < ActiveRecord::Migration[5.1]
  def change
    create_table :to_dos do |t|
      
      t.string :goal
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
