class ToDoSub < ApplicationRecord
    belongs_to :to_do
        
            t.string "goal"
    t.string "category"
    t.string "kind"
    t.string "content"
    t.date "timeframe"
    t.date "startdate"
    t.date "enddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "to_do_id"
    t.index ["to_do_id"], name: "index_to_dos_on_to_do_id"
    
end
