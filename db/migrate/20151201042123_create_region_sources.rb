class CreateRegionSources < ActiveRecord::Migration
  def change
    create_table :region_sources do |t|
      t.string :name
      t.text :description
      t.text :website

      t.timestamps null: false
    end
  end
end
