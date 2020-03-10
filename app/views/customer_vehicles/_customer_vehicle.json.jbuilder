json.extract! customer_vehicle, :id, :year, :color, :license_plate_number, :make_id, :vehicle_status_id, :state_province_id, :customer_id, :created_at, :updated_at
json.url customer_vehicle_url(customer_vehicle, format: :json)
