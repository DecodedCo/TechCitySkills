class AddSkillsToOpportunity < ActiveRecord::Migration
  def change
  	add_column :opportunities, :skills, :string
  end
end
