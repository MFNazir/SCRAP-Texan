class CreateVehicleStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicle_statuses do |t|
      t.string :vehicle_status
      t.string :vehicle_status_desc

      t.timestamps
    end
  end
end
