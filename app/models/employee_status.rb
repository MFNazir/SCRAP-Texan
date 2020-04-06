class EmployeeStatus < ApplicationRecord
    has_many :employees
    validates :employee_status, :employee_status_desc, :presence => true 
end
