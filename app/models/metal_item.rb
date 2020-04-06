class MetalItem < ApplicationRecord
  belongs_to :metal_type
  has_many :line_items
  has_many :invoices, through: :line_items
  accepts_nested_attributes_for :invoices, reject_if: :all_blank, allow_destroy: true


  validates :net_weight, :presence => true, numericality: {greater_than_or_equal_to: 0,  message: ":value cannot be negative"}

  validates :unit_price, :presence => true, numericality: {greater_than_or_equal_to: 0,  message: ":value cannot be negative"}
  
  validates :metal_item_desc, :metal_type_id, :presence => true

  after_save :calc_total
  after_update :calc_total
  after_validation :calc_total
  
  
  def calc_total
    
    self.total = (self.net_weight * self.unit_price)
  
  end

  
end
