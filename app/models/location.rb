class Location < ActiveRecord::Base
	belongs_to :job
	geocoded_by :address   # can also be an IP address
	before_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }         # auto-fetch coordinates
	validates :address, presence: true
	validates :longitude, presence: true
	validates :latitude, presence: true
end
