class MembershipType < ActiveRecord::Base
	has_many :convention_memberships
end
