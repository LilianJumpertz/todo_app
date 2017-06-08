class ToDo < ApplicationRecord

has_many :to_do_subs, dependent: :destroy

end
