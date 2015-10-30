class AddDetailsToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :population_growth, :decimal
    add_column :countries, :gdp, :integer, limit:8
    add_column :countries, :gdp_per_capita, :integer, limit:8
    add_column :countries, :iso_code_2, :integer
    add_column :countries, :iso_code_3, :integer
    add_column :countries, :country_numeric, :integer
    add_column :countries, :threatened_species, :integer
    add_column :countries, :forested_area, :decimal
    add_column :countries, :co2_emission, :integer, limit:8
    add_column :countries, :co2_per_capita, :decimal
    add_column :countries, :agriculture_production, :integer
  end
end
