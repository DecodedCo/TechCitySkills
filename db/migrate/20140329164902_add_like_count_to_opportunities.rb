class AddLikeCountToOpportunities < ActiveRecord::Migration
  def change
    add_column :opportunities, :like_count, :integer
  end
end
