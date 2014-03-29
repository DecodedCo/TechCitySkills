class Skill < ActiveRecord::Base
  belongs_to :skillCategory
  attr_accessible :name
end
