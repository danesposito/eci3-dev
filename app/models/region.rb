class Region < ActiveRecord::Base
	has_many :region_countries
	has_many :countries, through: :region_countries
end
