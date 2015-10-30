class ChangeIsoCode3TypeInCountries < ActiveRecord::Migration
  def self.up
    change_column :countries, :iso_code_3, :text
  end
 
  def self.down
    change_column :countries, :iso_code_3, :integer
  end
end
