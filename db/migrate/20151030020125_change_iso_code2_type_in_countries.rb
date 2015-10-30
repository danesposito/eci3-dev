class ChangeIsoCode2TypeInCountries < ActiveRecord::Migration
  def self.up
    change_column :countries, :iso_code_2, :text
  end
 
  def self.down
    change_column :countries, :iso_code_2, :integer
  end
end
