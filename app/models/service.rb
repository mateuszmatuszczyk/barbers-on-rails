class Service < ApplicationRecord

    belongs_to :appointment
    
    validates :service_name, presence: true
    validates :service_description, presence: true
    validates :service_description, length: { minimum: 50 }
    validates :service_duration, presence: true
    validates :service_price, presence: true

end
