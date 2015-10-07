class Convention < ActiveRecord::Base
	has_many :reporting_cycles
	has_many :cluster_members
	has_many :clusters, through: :cluster_members
end
