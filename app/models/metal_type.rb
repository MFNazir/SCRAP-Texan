class MetalType < ApplicationRecord
    has_many :metal_items

    validates :metal_type, :metal_type_desc, :presence => true
end
