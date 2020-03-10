class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :employee_first_name
      t.string :employee_middle_initial
      t.string :employee_last_name
      t.string :phone_number
      t.string :home_phone
      t.date :dob
      t.string :email_emp
      t.string :emp_address
      t.string :city
      t.integer :zip
      t.references :state_province, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :employee_type, null: false, foreign_key: true
      t.references :employee_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
