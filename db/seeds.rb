# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(id: 1, email: 'derekbarber@gmail.com', password: 'password', password_confirmation: 'password', name: 'Derek Barber' )

Admin.create(id: 1, email: 'derekbarber@gmail.com', password: 'password', password_confirmation: 'password', name: 'Derek Barber' )


TopStanding.create(id: 1, title: "2009 Smartsettle Infinity (in progress)", system: "Infinity", order: 1)
TopStanding.create(id: 2, title: "2008 Smartsettle One (in progress)", system: "One", order: 2)
TopStanding.create(id: 3, title: "All Time Smartsettle Infinity", system: "Infinity", order: 3)
TopStanding.create(id: 4, title: "All Time Smartsettle One", system: "One", order: 4)


TopStandingEntry.create(top_standing_id: 1, rank: 1, player: 'Stephan Svajian', coach: 'David Sella-Villa<br /><a href="http://www.wm.edu/" target="_blank">College of William & Mary</a>', country: 'USA', comments: '')
TopStandingEntry.create(top_standing_id: 1, rank: 2, player: 'Christine Vicin', coach: 'Dr. Robert Whipple<br />\n<a href="http://www.csudh.edu/" target="_blank">California State</a>', country: 'USA', comments: '')
TopStandingEntry.create(top_standing_id: 1, rank: 3, player: 'Erin McNeill', coach: 'David Sella-Villa<br /><a href="http://www.wm.edu/" target="_blank">College of William & Mary</a>', country: 'USA', comments: '')
TopStandingEntry.create(top_standing_id: 1, rank: 4, player: 'Laurie Frazier', coach: 'Dr. Robert Whipple<br />\n<a href="http://www.csudh.edu/" target="_blank">California State</a>', country: 'USA', comments: '')
