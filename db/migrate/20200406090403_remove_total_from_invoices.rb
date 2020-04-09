class RemoveTotalFromInvoices < ActiveRecord::Migration[6.0]
  def change

    remove_column :invoices, :total, :decimal
  end
end
