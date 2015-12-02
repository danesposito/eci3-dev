class AddRegionGroupIdToRegions < ActiveRecord::Migration
  def change
  	add_column :regions, :region_group_id, :integer
  end
end
