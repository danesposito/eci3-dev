class Indicator < ActiveRecord::Base
	belongs_to 	:record_type
	belongs_to 	:indicator_type
	belongs_to	:reporting_cycle
	has_many	:scoring_options
	accepts_nested_attributes_for :scoring_options, reject_if: lambda { |a| a[:description].blank? }, allow_destroy: true

end
