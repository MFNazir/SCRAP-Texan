class Employee < ApplicationRecord
  belongs_to :state_province
  belongs_to :country
  belongs_to :employee_type
  belongs_to :employee_status
  has_many :invoices

  validates :employee_first_name, :employee_last_name, :dob, :email_emp, :emp_address, :city, :state_province_id, :country_id, :employee_type_id, :employee_status_id, :presence => true
  validates :phone_number, :presence => true, length: { minimum: 10, maximum: 10 }
  validates :home_phone, :presence => true, length: { minimum: 10, maximum: 10 }
  validates :zip, :presence => true, length: { minimum: 5 }
  validates :employee_middle_initial, length: { maximum: 1 }, allow_blank: true
  def emp_first_and_last_no_id
    "#{employee_first_name} #{employee_last_name}"
   end
end
