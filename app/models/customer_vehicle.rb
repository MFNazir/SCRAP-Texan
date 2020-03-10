class CustomerVehicle < ApplicationRecord
  belongs_to :make
  belongs_to :vehicle_status
  belongs_to :state_province
  belongs_to :customer
end
