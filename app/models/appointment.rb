class Appointment < ApplicationRecord
  belongs_to :customer
  belongs_to :barber

  has_many :services
end
