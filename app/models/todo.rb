class Todo < ApplicationRecord

has_many :todosubs, dependent: :destroy

    validates :title,           length: {maximum: 50 }
    validates :category,        length: { maximum: 20 }
    validates :kind,            length: { maximum: 20 }
    validates :content,         presence: true,
                                length: { maximum: 300 }
    validates :importance,      inclusion: { in: %w(Urgent High Medium Low Optional), message: "%{value} is not a valid value" }
    validates :timeframe,       numericality: { greater_than: 0 }
    validates :timeframe_unit,  inclusion: { in: %w(Minutes Hours Days Weeks Months Years), message: "%{value} is not a valid time unit" }
    validates :startdate,       :timeliness => {:on_or_before => lambda { :enddate }, :type => :date}
    validates :enddate,         :timeliness => {:on_or_after => lambda { :startdate }, :type => :date}



#  toevoegen dat:
# - Timeframe en startdatum gevuld: einddatum automatisch gevuld
# - Timeframe en einddatum gevuld: startdatum automatisch gevuld
# - Startdatum en einddatum gevuld: timeframe automatisch gevuld

    # if :timeframe != "" && :startdate != "" && :enddate == ""
    #     #:enddate = :startdate + :timeframe
    #     puts "hallo"
    # elseif :timeframe != "" && :startdate == "" && :enddate != ""
    #     #:startdate = :enddate - :timeframe
    # elseif :timeframe == "" && :startdate != "" && :enddate != ""
    #     #:timeframe = :enddate - :startdate
    # end
  
end