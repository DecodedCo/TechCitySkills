class Opportunity < ActiveRecord::Base
  attr_accessible :address, :cost, :description, :girls_only, :into_work, :lat, :level_age_max, :level_age_min, :level_exp, :lon, :name, :site_url, :skills, :cost_min, :audience, :audience, :employer_opp, :lo_type
end
