class Invoice < ApplicationRecord
  belongs_to :customer
  belongs_to :employee
  belongs_to :invoice_type
  belongs_to :invoice_status
  has_many :line_items 
  has_many :metal_items, through: :line_items
  accepts_nested_attributes_for :metal_items, reject_if: :all_blank, allow_destroy: true

  has_one_attached :metal_img
  validates :metal_items, :presence => true
  validates :invoice_number, :presence => true, length: { minimum: 7, maximum: 7 }
  validates :invoice_date_time, :metal_img, :customer_id, :employee_id, :invoice_type_id, :invoice_status_id, :invoice_desc, :presence => true

end
