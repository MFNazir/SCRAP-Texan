class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :dl_number
      t.string :dl_state
      t.string :cust_f_name
      t.string :cust_m_initial
      t.string :cust_l_name
      t.string :company
      t.string :cust_address
      t.string :cust_city
      t.string :zip_code
      t.string :cust_phone
      t.string :cust_email
      t.date :dob
      t.text :dl_picture
      t.references :state_province, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :customer_status, null: false, foreign_key: true
      t.references :customer_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
