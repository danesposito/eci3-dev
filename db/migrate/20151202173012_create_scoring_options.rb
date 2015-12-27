class CreateScoringOptions < ActiveRecord::Migration
  def change
    create_table :scoring_options do |t|
      t.integer :indicator_id
      t.string :description
      t.integer :value
      t.boolean :not_applicable

      t.timestamps null: false
    end
  end
end
