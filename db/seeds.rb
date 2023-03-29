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
airport_codes = %w[SGN HAN VCA DAD PQC]
airport_codes.each { |code| Airport.create(code:) }

Flight.create(departure_airport: Airport.find_by(code: "ATL"), arrival_airport: Airport.find_by(code: "PEK"), start_time: DateTime.now.beginning_of_day + 0.hours, duration: 120)
Flight.create(departure_airport: Airport.find_by(code: "ATL"), arrival_airport: Airport.find_by(code: "PEK"), start_time: DateTime.now.beginning_of_day + 8.hours, duration: 240)
Flight.create(departure_airport: Airport.find_by(code: "ATL"), arrival_airport: Airport.find_by(code: "DXB"), start_time: 2.days.from_now, duration: 250)
Flight.create(departure_airport: Airport.find_by(code: "PEK"), arrival_airport: Airport.find_by(code: "DXB"), start_time: 3.days.from_now, duration: 60)
Flight.create(departure_airport: Airport.find_by(code: "PEK"), arrival_airport: Airport.find_by(code: "DXB"), start_time: 3.days.from_now + 1.hours, duration: 180)

airport_codes.combination(2) do |pair|
  day_range = rand(3)
  rand1 = rand(12)
  rand2 = rand(12)
  Flight.create(departure_airport: Airport.find_by(code: pair.first), arrival_airport: Airport.find_by(code: pair.second), start_time: DateTime.now.beginning_of_day + day_range.days + rand1.hours, duration: rand1 * 10)
  Flight.create(departure_airport: Airport.find_by(code: pair.first), arrival_airport: Airport.find_by(code: pair.second), start_time: DateTime.now.beginning_of_day + day_range.days + rand2.hours, duration: rand2 * 10)
end
