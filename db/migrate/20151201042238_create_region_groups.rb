class CreateRegionGroups < ActiveRecord::Migration
  def change
    create_table :region_groups do |t|
      t.integer :region_source_id
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
