# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do
	u1 = User.create(name: "bryant")
	u2 = User.create(name: "dan")
	t = Team.create(name: "App Academy")
	t2 = Team.create(name: "Coachella")
	t.users << u1

	p1 = Project.create(title: "Rails", description: "learn rails for 9 weeks", team_id: 1)
end


