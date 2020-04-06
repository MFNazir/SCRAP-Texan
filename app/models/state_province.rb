class StateProvince < ApplicationRecord
    has_many :employees
    has_many :customers
    has_many :customer_vehicles
    validates :state_province_name, :presence => true
end
