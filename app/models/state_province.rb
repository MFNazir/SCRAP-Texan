class StateProvince < ApplicationRecord
    has_many :employees
    has_many :customers
    has_many :customer_vehicles
end
