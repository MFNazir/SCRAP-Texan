class Customer < ApplicationRecord
  belongs_to :state_province
  belongs_to :country
  belongs_to :customer_status
  belongs_to :customer_type
  has_many :invoices
  has_many :customer_vehicles
  accepts_nested_attributes_for :customer_vehicles, reject_if: :all_blank, allow_destroy: true


end
