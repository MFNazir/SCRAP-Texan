class CustomerVehicle < ApplicationRecord
  belongs_to :make
  belongs_to :vehicle_status
  belongs_to :state_province
  belongs_to :customer

  validates :year, :presence => true, length: { minimum: 4, maximum: 4 }

  validates :color, :license_plate_number, :make_id, :vehicle_status_id, :state_province_id, :presence => true
  
end
