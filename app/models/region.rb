class Region < ActiveRecord::Base
	has_many 	:region_countries
	has_many 	:countries, through: :region_countries
	belongs_to 	:region_group
	accepts_nested_attributes_for :countries
	accepts_nested_attributes_for :region_group
end
