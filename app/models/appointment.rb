class Appointment < ApplicationRecord
  belongs_to :customer
  belongs_to :barber

  has_and_belongs_to_many :services

  validates :appointment_time, presence: true
  validates :appointment_date, presence: true
  validates :status, presence: true
  validates :customer_id, presence: true
  validates :barber_id, presence: true
end
