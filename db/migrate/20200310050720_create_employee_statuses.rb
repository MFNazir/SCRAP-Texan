class CreateEmployeeStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_statuses do |t|
      t.string :employee_status
      t.string :employee_status_desc

      t.timestamps
    end
  end
end
