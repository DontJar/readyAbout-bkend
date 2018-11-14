# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "skipper")

Boat.create(name: "Abby", length: 27, home_port: "Oldman’s Creek, NJ", user_id: 1)
Boat.create(name: "IDUNA", length: 28, home_port: "Galesville, MD", user_id: 1)

Logbook.create(date_began: DateTime.new(2016,10,5), boat_id: 1)
Logbook.create(date_began: DateTime.new(2012,3,27), boat_id: 2)

Trip.create(start_date: "March 21, 1985", start_point: "39.785182, -75.407387", destination: "38.838959, -76.545075", user_id: 1)
Trip.create(start_date: "June 20 1982", start_point: "38.836645, -76.543251", destination: "38.838959, -76.545075", user_id: 1)

Log.create(entry_date: DateTime.new(2016,10,5), noon_location: "38.836645, -76.543251", weather: "fair skys", fuel_consumed: "2.5 gallons", logbook_id: 1, trip_id: 2)
Log.create(entry_date: DateTime.new(2016,10,6), noon_location: "38.834317, -76.437530", weather: "choppy seas", fuel_consumed: "0 gallons", logbook_id: 1, trip_id: 2)
Log.create(entry_date: DateTime.new(2016,10,7), noon_location: "38.640194, -76.388251", weather: "windy AF", fuel_consumed: ".5 gallons", logbook_id: 1, trip_id: 2)
Log.create(entry_date: DateTime.new(2016,10,8), noon_location: "38.838959, -76.545075", weather: "force 3", fuel_consumed: "1 gallon", logbook_id: 1, trip_id: 2)
