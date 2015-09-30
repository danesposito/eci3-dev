class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :alternative_name
      t.string :country_code
      t.text :description

      t.timestamps null: false
    end
  end
end
