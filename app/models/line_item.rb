class LineItem < ApplicationRecord
  belongs_to :invoice
  belongs_to :metal_item
end
