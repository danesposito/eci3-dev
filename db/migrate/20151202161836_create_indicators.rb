class CreateIndicators < ActiveRecord::Migration
  def change
    create_table :indicators do |t|
      t.integer :indicator_type_id
      t.integer :record_type_id
      t.integer :parent_id
      t.string :question_number
      t.integer :indicator_number
      t.text :question_text
      t.text :indicator_text
      t.integer :prior_cycle
      t.integer :prior_question

      t.timestamps null: false
    end
  end
end
