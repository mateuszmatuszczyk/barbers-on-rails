class Customer < ApplicationRecord
  belongs_to :user
  has_many :appointments

  # validates :customer_number, presence: true, length: { minimum: 6 }
end
