class InvoiceType < ApplicationRecord

    has_many :invoices

    validates :invoice_type, :invoice_type_desc, :presence => true
end
