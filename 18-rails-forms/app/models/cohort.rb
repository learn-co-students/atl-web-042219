class Cohort < ApplicationRecord
    has_many :students

    validates :name, { presence: true, uniqueness: true }
end
