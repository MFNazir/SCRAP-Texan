json.extract! customer, :id, :dl_number, :dl_state, :cust_f_name, :cust_m_initial, :cust_l_name, :company, :cust_address, :cust_city, :zip_code, :cust_phone, :cust_email, :dob, :dl_picture, :state_province_id, :country_id, :customer_status_id, :customer_type_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
