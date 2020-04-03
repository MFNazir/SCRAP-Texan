class Employee < ApplicationRecord
  belongs_to :state_province
  belongs_to :country
  belongs_to :employee_type
  belongs_to :employee_status
  has_many :invoices

  def emp_first_and_last_no_id
    "#{employee_first_name} #{employee_last_name}"
   end
end
