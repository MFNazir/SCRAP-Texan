class MetalItem < ApplicationRecord
  belongs_to :metal_type
  has_many :line_items
  has_many :invoices, through: :line_items
  accepts_nested_attributes_for :invoices, reject_if: :all_blank, allow_destroy: true

end
