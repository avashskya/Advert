class Advert < ApplicationRecord
    belongs_to :creator, class_name:"Creator", optional:"true"
    has_many :promoters
end
 