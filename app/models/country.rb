class Country < ActiveRecord::Base
	has_many :region_countries
	has_many :regions, through: :region_countries
end
