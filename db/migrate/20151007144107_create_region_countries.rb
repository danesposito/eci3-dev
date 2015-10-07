class CreateRegionCountries < ActiveRecord::Migration
  def change
    create_table :region_countries do |t|
      t.integer :region_id
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
