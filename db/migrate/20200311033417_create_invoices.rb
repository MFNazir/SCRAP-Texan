class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.integer :invoice_number
      t.datetime :invoice_date_time
      t.text :material_image
      t.references :customer, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true
      t.references :invoice_type, null: false, foreign_key: true
      t.references :invoice_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
