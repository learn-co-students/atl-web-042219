class Zoo < ActiveRecord::Base
  has_many :animals

  # has_many :appointments
  # has_many(:patients, through: :appointments)
  # has_many(:patients, :through => :appointments)
end
