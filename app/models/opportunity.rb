class Opportunity < ActiveRecord::Base
  belongs_to :skills
  attr_accessible :address, :cost, :description, :girls_only, :into_work, :lat, :level_age_max, :level_age_min, :level_exp, :lon, :name, :site_url
end
