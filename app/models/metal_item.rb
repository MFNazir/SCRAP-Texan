class MetalItem < ApplicationRecord
  belongs_to :metal_type
  has_many :line_items
  has_many :invoices, through: :line_items
  accepts_nested_attributes_for :invoices, reject_if: :all_blank, allow_destroy: true


  validates :net_weight, :presence => true, format: { with: /\A\d+(?:\.\d{1})?\z/ }, numericality: {greater_than_or_equal_to: 0,  message: ":value cannot be negative"}

  validates :unit_price, :presence => true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: {greater_than: 0, less_than: 1000000,  message: ":value cannot be negative"}
  
  validates :metal_item_desc, :metal_type_id, :presence => true

  after_save :calc_total
  after_update :calc_total
  after_validation :calc_total
  
  
  def calc_total
    
    self.total = (self.net_weight * self.unit_price)
  
  end

  
end
