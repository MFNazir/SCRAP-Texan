class CustomerType < ApplicationRecord
    has_many :customers
    
    validates :customer_type, :customer_type_desc, :presence => true

end
