class Country < ActiveRecord::Base
	has_many :region_countries
	has_many :regions, through: :region_countries

	validates 	:name, :presence => true, :length => { :within => 3..255, :allow_blank => false, }, :uniqueness => true    

end
