class Country < ApplicationRecord
    has_many :employees
    has_many :customers

    validates :country_name, :presence => true
end
