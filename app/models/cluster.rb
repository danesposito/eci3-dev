class Cluster < ActiveRecord::Base
	has_many :cluster_members
	has_many :conventions, through: :cluster_members

	validates 	:name, :presence => true, :length => { :within => 3..255, :allow_blank => false, }, :uniqueness => true   
end
