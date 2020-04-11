class Customer < ApplicationRecord
  belongs_to :state_province
  belongs_to :country
  belongs_to :customer_status
  belongs_to :customer_type
  has_many :invoices
  has_many :customer_vehicles
  accepts_nested_attributes_for :customer_vehicles, reject_if: :all_blank, allow_destroy: false

  has_one_attached :dl_image

  validates :cust_phone, :presence => true, length: { minimum: 10, maximum: 10 }
  validates :zip_code, :presence => true, length: { minimum: 5 }
  validates :dl_state, :presence => true, length: { minimum: 2, maximum: 2 }
  validates :cust_m_initial, length: { maximum: 1 }, allow_blank: true
  validates :dl_image, :presence => true, blob: { content_type: :image }
  validates :cust_email, :presence => true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :cust_f_name, :cust_l_name, :cust_address, :cust_city, :dl_number, :dob, :state_province_id, :country_id, :customer_status_id, :customer_type_id, :presence => true
  validates :customer_vehicles, :presence => true
    
  def first_and_last
      "#{cust_f_name} #{cust_l_name}" " " "#{dl_number}" " " "(#{customer_type.customer_type})"
  end

  def first_and_last_no_id
   "#{cust_f_name} #{cust_l_name}"
  end
end

 