class ClusterMember < ActiveRecord::Base
	belongs_to :cluster
	belongs_to :convention
end
