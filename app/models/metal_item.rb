class MetalItem < ApplicationRecord
  belongs_to :metal_type
  has_many :line_items
  has_many :invoices, through: :line_items
end
