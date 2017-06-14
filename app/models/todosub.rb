class Todosub < ApplicationRecord
    belongs_to :todo
        
    validates :title,            length: { maximum: 50 }
    validates :category,        length: { maximum: 20 }
    validates :kind,            length: { maximum: 20 }
    validates :content,         presence: true,
                                length: { maximum: 300 }
    validates :importance,      inclusion: { in: %w(Urgent High Medium Low Optional), message: "%{value} is not a valid value" }
    validates :timeframe,       numericality: { greater_than: 0 }
    validates :timeframe_unit,  inclusion: { in: %w(Minutes Hours Days Weeks Months Years), message: "%{value} is not a valid time unit" }
    validates :startdate,       :timeliness => {:on_or_before => lambda { :enddate }, :type => :date}
    validates :enddate,         :timeliness => {:on_or_after => lambda { :startdate }, :type => :date}
    
end