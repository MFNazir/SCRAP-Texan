class CreateCustomerVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_vehicles do |t|
      t.string :year
      t.string :color
      t.string :license_plate_number
      t.references :make, null: false, foreign_key: true
      t.references :vehicle_status, null: false, foreign_key: true
      t.references :state_province, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
