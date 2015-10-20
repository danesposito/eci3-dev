class CreateConventionMemberships < ActiveRecord::Migration
  def change
    create_table :convention_memberships do |t|
      t.integer :convention_id
      t.integer :country_id
      t.string :membership_type_id
      t.date :date

      t.timestamps null: false
    end
  end
end
