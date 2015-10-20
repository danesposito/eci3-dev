class ConventionMembership < ActiveRecord::Base
	belongs_to :convention
	belongs_to :country
	belongs_to :membership_type
end
