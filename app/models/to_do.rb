class ToDo < ApplicationRecord

has_many :to_do_subs, dependent: :destroy

    validates :category,        length: { maximum: 20 }
    validates :kind,            length: { maximum: 20 }
    validates :content,         presence: true,
                                length: { maximum: 100 }
    validates :timeframe,       numericality: { greater_than: 0 }
    # validates :timeframe_unit,  inclusion: { in: %w(hours days months years), message: "%{value} is not a valid time unit" }
    validates :startdate,       :timeliness => {:on_or_before => lambda { :enddate }, :type => :date}
    validates :enddate,         :timeliness => {:on_or_after => lambda { :startdate }, :type => :date}



#  toevoegen dat:
# - Timeframe en startdatum gevuld: einddatum automatisch gevuld
# - Timeframe en einddatum gevuld: startdatum automatisch gevuld
# - Startdatum en einddatum gevuld: timeframe automatisch gevuld

    if :timeframe != "" && :startdate != "" && :enddate == ""
        #:enddate = :startdate + :timeframe
        puts "hallo"
    elseif :timeframe != "" && :startdate == "" && :enddate != ""
        #:startdate = :enddate - :timeframe
    elseif :timeframe == "" && :startdate != "" && :enddate != ""
        #:timeframe = :enddate - :startdate
    end


before_validation { gender.downcase! }
  before_validation { postal_code.gsub(/\s+/, '') }
  before_save { email.downcase! }
  
end