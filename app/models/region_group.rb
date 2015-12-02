class RegionGroup < ActiveRecord::Base
	belongs_to 	:region_source
	has_many	:regions
end
