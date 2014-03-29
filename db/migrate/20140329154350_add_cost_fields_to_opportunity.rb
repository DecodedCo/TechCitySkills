class AddCostFieldsToOpportunity < ActiveRecord::Migration
  def change
  	add_column :opportunities, :cost_min, :integer
  end
end
