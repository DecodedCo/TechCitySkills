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

csv_text = File.read('tmp/opportunities.csv')
csv = CSV.parse(csv_text)
csv.each do |row|
	Opportunity.create({
		name: row[0],

		})

opportunities = Opportunity.create([
	{}])

