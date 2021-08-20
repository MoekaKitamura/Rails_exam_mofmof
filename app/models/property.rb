class Property < ApplicationRecord
    has_many :stations, dependent: :destroy
    accepts_nested_attributes_for :stations, allow_destroy: true, 
        reject_if: proc { |attributes| attributes['station_name'].blank? }
    validates :property_name, presence: true
end
