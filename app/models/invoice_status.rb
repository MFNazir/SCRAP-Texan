class InvoiceStatus < ApplicationRecord

    has_many :invoices

    validates :invoice_status, :invoice_status_desc, :presence => true
end
