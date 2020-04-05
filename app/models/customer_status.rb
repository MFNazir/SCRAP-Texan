class CustomerStatus < ApplicationRecord
    has_many :customers

    validates :customer_status, :customer_status_desc, :presence => true
end
