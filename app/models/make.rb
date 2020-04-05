class Make < ApplicationRecord
  belongs_to :manufacturer
  has_many :customer_vehicles

  validates :make_name, :manufacturer_id, :presence => true
end
