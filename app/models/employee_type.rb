class EmployeeType < ApplicationRecord
    has_many :employees

    validates :employee_type, :employee_type_desc, :presence => true

end
