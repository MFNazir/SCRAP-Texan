class Employee < ApplicationRecord
  belongs_to :state_province
  belongs_to :country
  belongs_to :employee_type
  belongs_to :employee_status
  has_many :invoices

end
