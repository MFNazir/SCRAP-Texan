class Customer < ApplicationRecord
  belongs_to :state_province
  belongs_to :country
  belongs_to :customer_status
  belongs_to :customer_type
  has_many :invoices
  has_many :customer_vehicles
  accepts_nested_attributes_for :customer_vehicles, reject_if: :all_blank, allow_destroy: true

  has_one_attached :dl_image

  validates :cust_phone, :presence => true, length: { minimum: 10 }
    
  def first_and_last
      "#{cust_f_name} #{cust_l_name}" " " "#{dl_number}"
  end

  def first_and_last_no_id
   "#{cust_f_name} #{cust_l_name}"
  end
end

