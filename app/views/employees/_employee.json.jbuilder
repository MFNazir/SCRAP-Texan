json.extract! employee, :id, :employee_first_name, :employee_middle_initial, :employee_last_name, :phone_number, :home_phone, :dob, :email_emp, :emp_address, :city, :zip, :state_province_id, :country_id, :employee_type_id, :employee_status_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
