class VehicleStatus < ApplicationRecord
    has_many :customer_vehicles

    validates :vehicle_status, :vehicle_status_desc, :presence => true

end
