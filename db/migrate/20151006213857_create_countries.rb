class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :population, limit:8
      t.integer :area, limit:8
      t.boolean :un_member

      t.timestamps null: false
    end
  end
end
