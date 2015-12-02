class RegionSource < ActiveRecord::Base
	has_many :region_groups, dependent: :destroy
	accepts_nested_attributes_for :region_groups, reject_if: lambda { |a| a[:name].blank? }, allow_destroy: true
end
