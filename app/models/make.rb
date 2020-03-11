class Make < ApplicationRecord
  belongs_to :manufacturer
  has_many :customer_vehicles
end
