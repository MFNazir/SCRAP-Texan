class AddInvoiceDescToInvoices < ActiveRecord::Migration[6.0]
  def change
    add_column :invoices, :invoice_desc, :string
  end
end
