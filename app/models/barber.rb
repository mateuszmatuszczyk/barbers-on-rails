class Barber < ApplicationRecord
	has_many :appointments

	validates :barber_name, presence: true
	validates :barber_bio, presence: true
	validates :barber_bio, length: { minimum: 50 }
	
end 