class CreateOpportunityTypes < ActiveRecord::Migration
  def change
    create_table :opportunity_types do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
