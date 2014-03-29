class AddMoreFieldsToOpportunity < ActiveRecord::Migration
  def change
  	add_column :opportunities, :audience    , :string
  	add_column :opportunities, :employer_opp, :string
  	add_column :opportunities, :lo_type        , :string
  end
end
