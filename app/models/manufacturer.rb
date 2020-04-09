class Manufacturer < ApplicationRecord
    has_many :makes 
    accepts_nested_attributes_for :makes, reject_if: :all_blank, allow_destroy: true

  validates :manufacturer_name, :presence => true


end
