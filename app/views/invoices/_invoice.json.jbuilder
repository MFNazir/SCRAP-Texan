json.extract! invoice, :id, :invoice_number, :invoice_date_time, :material_image, :customer_id, :employee_id, :invoice_type_id, :invoice_status_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
