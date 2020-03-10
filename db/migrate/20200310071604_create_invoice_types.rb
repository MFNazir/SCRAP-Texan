class CreateInvoiceTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :invoice_types do |t|
      t.string :invoice_type
      t.string :invoice_type_desc

      t.timestamps
    end
  end
end
