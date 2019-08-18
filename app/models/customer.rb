class Customer < ApplicationRecord
  belongs_to :user
  has_many :appointments

  validates :customer_name, presence: true , length: {minimum:3, maximum:30}
  validates :customer_number, presence: true
  validates_format_of :customer_number, :with => /\(?[0-9]{10}/,
  :message => "- Phone numbers must 10 digits long, in 08XXXXXXX format."
end
