class MetalItem < ApplicationRecord
  belongs_to :metal_type
  has_many :line_items
  has_many :invoices, through: :line_items
  accepts_nested_attributes_for :invoices, reject_if: :all_blank, allow_destroy: true

  validates :total, :presence => true, length: { minimum: 1, maximum: 11 }


  validates :metal_item_desc, :net_weight, :unit_price, :metal_type_id, :presence => true
end
