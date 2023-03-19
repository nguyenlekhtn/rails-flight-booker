# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flight.delete_all
Airport.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!(Flight.table_name)
ActiveRecord::Base.connection.reset_pk_sequence!(Airport.table_name)
airport_codes = %w[ATL PEK DXB LAX ORD LHR HND HKG PVG CDG AMS DFW CAN FRA IST DEL CGK SIN ICN DEN]
airport_codes.each { |code| Airport.create(code:) }

Flight.create(departure_airport: Airport.find(1), arrival_airport: Airport.find(2), start_time: DateTime.now.beginning_of_day + 9.hours, duration: 120)
Flight.create(departure_airport: Airport.find(1), arrival_airport: Airport.find(3), start_time: DateTime.now.beginning_of_day + 17.hours, duration: 60)
Flight.create(departure_airport: Airport.find(3), arrival_airport: Airport.find(1), start_time: DateTime.now.beginning_of_day + 5.hours, duration: 300)
Flight.create(departure_airport: Airport.find(2), arrival_airport: Airport.find(3), start_time: DateTime.now.beginning_of_day + 5.hours, duration: 240)
Flight.create(departure_airport: Airport.find(2), arrival_airport: Airport.find(1), start_time: DateTime.now.beginning_of_day + 5.hours, duration: 180)
Flight.create(departure_airport: Airport.find(1), arrival_airport: Airport.find(4), start_time: DateTime.now.beginning_of_day + 6.hours, duration: 100)
Flight.create(departure_airport: Airport.find(1), arrival_airport: Airport.find(7), start_time: DateTime.now.beginning_of_day + 7.hours, duration: 360)
Flight.create(departure_airport: Airport.find(1), arrival_airport: Airport.find(2), start_time: DateTime.now.beginning_of_day + 7.hours, duration: 240)
