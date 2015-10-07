class Cluster < ActiveRecord::Base
	has_many :cluster_members
	has_many :conventions, through: :cluster_members
end
