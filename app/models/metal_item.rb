class MetalItem < ApplicationRecord
  belongs_to :metal_type
  has_many :line_items
  has_many :invoices, through: :line_items
  accepts_nested_attributes_for :invoices, reject_if: :all_blank, allow_destroy: true

  validates :total, :presence => true, length: { minimum: 1, maximum: 11 }, numericality: {greater_than_or_equal_to: 0,  message: ":cannot be negative"}

  validates :net_weight, :presence => true, numericality: {greater_than_or_equal_to: 0,:allow_nil => true,  message: ":cannot be negative"}

  validates :unit_price, :presence => true, numericality: {greater_than_or_equal_to: 0,:allow_nil => true,  message: ":cannot be negative"}
  
  validates :metal_item_desc, :metal_type_id, :presence => true
end
