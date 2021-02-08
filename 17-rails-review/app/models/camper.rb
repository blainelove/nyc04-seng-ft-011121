class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 9}


end
