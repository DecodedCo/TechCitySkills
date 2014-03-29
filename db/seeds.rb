# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

types = OpportunityType.create([{name: 'Event'},
						{name: 'Course'},
						{name: 'Online'},
						{name: 'Workshop'},
						{name: 'Open Day'},
						{name: 'Talk'},
						{name: 'Networking'},
						{name: 'Community'},
						{name: 'Awards'},
						{name: 'Apprenticeship'}])

require 'csv'

csv_text = File.open('opportunities.csv', "r:ISO-8859-1")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
	Opportunity.create(row.to_hash)
end
