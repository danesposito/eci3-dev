class CreateClusterMembers < ActiveRecord::Migration
  def change
    create_table :cluster_members do |t|
      t.integer :cluster_id
      t.integer :convention_id

      t.timestamps null: false
    end
  end
end
