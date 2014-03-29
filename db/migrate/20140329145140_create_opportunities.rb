class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :name
      t.string :site_url
      t.text :description
      t.references :skills
      t.string :level_exp
      t.integer :level_age_min
      t.integer :level_age_max
      t.string :cost
      t.string :address
      t.float :lat
      t.float :lon
      t.boolean :into_work
      t.boolean :girls_only

      t.timestamps
    end
    add_index :opportunities, :skills_id
  end
end
