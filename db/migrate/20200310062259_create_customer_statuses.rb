class CreateCustomerStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_statuses do |t|
      t.string :customer_status
      t.string :customer_status_desc

      t.timestamps
    end
  end
end
