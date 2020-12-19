class Promoter < User
    has_many :promotions
    has_many :adverts, through: :promotions
end
