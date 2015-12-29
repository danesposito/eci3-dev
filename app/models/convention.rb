class Convention < ActiveRecord::Base
	has_many :reporting_cycles
	has_many :cluster_members
	has_many :clusters, through: :cluster_members

	validates 	:name, :presence => true, :length => { :within => 3..255, :allow_blank => false, }, :uniqueness => true   
end
