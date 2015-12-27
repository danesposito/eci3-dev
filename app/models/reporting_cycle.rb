class ReportingCycle < ActiveRecord::Base
	belongs_to 	:convention
	has_many	:indicators
	accepts_nested_attributes_for :indicators, reject_if: lambda { |a| a[:indicator_type_id].blank? }, allow_destroy: true
end
