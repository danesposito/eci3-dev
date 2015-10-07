class CreateReportingCycles < ActiveRecord::Migration
  def change
    create_table :reporting_cycles do |t|
      t.integer :convention_id
      t.date :date
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
