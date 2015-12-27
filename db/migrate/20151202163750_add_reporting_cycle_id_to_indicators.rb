class AddReportingCycleIdToIndicators < ActiveRecord::Migration
  def change
    add_column :indicators, :reporting_cycle_id, :integer
  end
end
